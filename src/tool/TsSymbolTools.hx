package tool;

import haxe.ds.ReadOnlyArray;
import typescript.ts.Declaration;
import typescript.ts.TypeChecker;
import haxe.macro.Expr.ComplexType;
import typescript.ts.SourceFile;
import typescript.Ts;
import typescript.ts.SyntaxKind;
import typescript.ts.SymbolFlags;
import typescript.ts.Symbol;

using TsInternal;

@:nullSafety
class TsSymbolTools {

	public static function getId(symbol: Symbol) {
		return Std.int(Ts.getSymbolId(symbol));
	} 
	
	/**
		Apparently the way to detect for an external module is to check for double quote at the start of the name
		https://github.com/microsoft/TypeScript/blob/5e9c43607f8732bc94374c95fddd8b1fd9881122/src/services/utilities.ts#L1657
	**/
	public static function isExternalModuleSymbol(symbol: Symbol): Bool {
		return (symbol.flags & SymbolFlags.Module != 0) &&
				symbol.name.charCodeAt(0) == '"'.code;
	}

	public static function isSourceFileSymbol(symbol: Symbol): Bool {
		return (symbol.flags & SymbolFlags.Module != 0) &&
				symbol.valueDeclaration != null &&
				Ts.isSourceFile(symbol.valueDeclaration);
	}

	public static function getSymbolRootParent(symbol: Symbol): Null<Symbol> {
		var rootParent: Null<Symbol> = null;
		var parentSymbol = getSymbolParent(symbol);
		while(parentSymbol != null) {
			rootParent = parentSymbol;
			parentSymbol = getSymbolParent(parentSymbol);
		}
		return rootParent;
	}

	public static function getSymbolParents(symbol: Symbol): Array<Symbol> {
		var parentChain = new Array<Symbol>();
		var currentSymbol: Null<Symbol> = symbol;
		while (currentSymbol != null) {
			currentSymbol = getSymbolParent(currentSymbol);
			if (currentSymbol != null) {
				parentChain.unshift(currentSymbol);
			}
		}
		return parentChain;
	}

	public static function getSymbolParent(symbol: Symbol): Null<Symbol> {
		return Reflect.field(symbol, 'parent');
	}

	/**
		An array of matched SymbolFlags
		If `compositeFlags` is true, SymbolFlags that are unions of other flags are included, for example:
			SymbolFlags Module = ValueModule | NamespaceModule
	**/
	public static function getFlagsInfo(symbol: Symbol, compositeFlags: Bool = false): Array<String> {
		var activeFlags = new Array<String>();

		var symbolFlagsEnum = getSymbolFlagsMap();
		for (key => value in symbolFlagsEnum) {
			if (!compositeFlags && !isPowerOfTwo(value)) continue;
			if (symbol.flags & value != 0) {
				activeFlags.push(key);
			}
		}

		return activeFlags;
	}

	public static function getPosition(symbol: Symbol): haxe.macro.Expr.Position {
		var node = if (symbol.valueDeclaration != null) {
			symbol.valueDeclaration;
		} else {
			getDeclarationsArray(symbol)[0];
		}

		return if (node != null) {
			file: node.getSourceFile().fileName,
			min: Std.int(node.getStart()),
			max: Std.int(node.getEnd()),
		} else {
			file: '<unknown location>',
			min: -1,
			max: -1,
		}
	}

	public static function getExports(symbol: Symbol): Array<Symbol> {
		var exports = [];
		if (symbol.exports != null) symbol.exports.forEach((s, _) -> exports.push(s));
		return exports;
	}

	public static function getDeclarationsForInterpretation(symbol: Symbol, interpretation: SymbolInterpretation) {
		var declarations = getDeclarationsArray(symbol);
		return switch interpretation {
			case TypeDeclaration:
				declarations.filter(
					s -> [
						SyntaxKind.InterfaceDeclaration,
						SyntaxKind.ClassDeclaration,
						SyntaxKind.EnumDeclaration,
						SyntaxKind.TypeAliasDeclaration,
					].indexOf(s.kind) != -1
				);
			case ValueDeclaration:
				declarations.filter(
					s -> [
						SyntaxKind.FunctionDeclaration,
						SyntaxKind.VariableDeclaration,
					].indexOf(s.kind) != -1
				);
			case ModuleDeclaration:
				declarations.filter(
					s -> [
						SyntaxKind.ModuleDeclaration,
					].indexOf(s.kind) != -1
				);
		}
	}

	/**
		symbol.declarations may be null, this method always returns an array
	**/
	public static function getDeclarationsArray(symbol: Symbol): Array<Declaration> {
		return symbol.declarations != null ? symbol.declarations : [];
	}

	/**
		Walks key symbols that have the following flags:
			- Type
			- Alias
			- Variable
			- Function
			- Module

		It **does not** walk into types, or explore type information. For example, it will not walk class fields or the type in this declaration `const X: Type;`

		If a symbol as multiple matching flags, multiple callbacks will fire with the same symbol

		The input symbol will be walked

		`accessChain` represents that path to traverse to reach the symbol and it includes the symbol itself.

		For example, consder the symbol `EventEmitter` in node.js

		```typescript
		declare module "events" {
			class internal extends NodeJS.EventEmitter { }

			namespace internal {
				class EventEmitter extends internal { }
			}

			export = internal;
		}
		```

		While the symbol's parent path is [Module("events"), internal, EventEmitter], the accessChain is [Module("events"), EventEmitter]
	**/
	public static function walkDeclarationSymbols(symbol: Symbol, tc: TypeChecker, onSymbol: (Symbol, accessChain: ReadOnlyArray<Symbol>) -> Void, ?accessChain: ReadOnlyArray<Symbol>, ?log: Log, depth: Int = 0) {
		accessChain = accessChain != null ? accessChain : [symbol];

		// prevent cycles by terminating if the current symbol appears in the parent access chain
		for (i in 0...accessChain.length - 1) {
			if (accessChain[i] == symbol) {
				return;
			}
		}

		// explicitly ignored symbols
		var ignoredSymbolFlags = SymbolFlags.ExportStar;

		// log.log('${[for (i in 0...depth) '\t'].join('')}<b>walkDeclarationSymbols()</b> <yellow>${accessChain.map(s -> s.name)}</>', symbol);

		// handle module replacement: `export =`, for example, the module symbol
		// `declare module "module" { export = Class; }`
		// will be replaced with `Class`
		if (symbol.flags & SymbolFlags.Module != 0) {
			// internal method used to resolve `export =` modules
			var resolvedSymbol = tc.resolveExternalModuleSymbol(symbol);

			if (resolvedSymbol != symbol) {
				// accessChain remains the same, we access the `export = symbol through the module symbol
				// log.log('<magenta>Module <b>${symbol.name} ${symbol.getFlagsInfo()}</b> mapped via `<i>export =</>` to <b>${resolvedSymbol.name} ${resolvedSymbol.getFlagsInfo()}</b></>', symbol);
				walkDeclarationSymbols(resolvedSymbol, tc, onSymbol, accessChain, log, depth);
				return;
			}
		}

		var handled = symbol.flags & ignoredSymbolFlags != 0;

		if (symbol.flags & SymbolFlags.Alias != 0) {
			handled = true;
			onSymbol(symbol, accessChain);
			var aliasedSymbol = tc.getAliasedSymbol(symbol);
			walkDeclarationSymbols(aliasedSymbol, tc, onSymbol, accessChain.concat([aliasedSymbol]), log, depth + 1);
		}

		if (symbol.flags & (SymbolFlags.Type | SymbolFlags.Variable | SymbolFlags.Function | SymbolFlags.Property) != 0) {
			// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias |
			// FunctionScopedVariable | BlockScopedVariable | Function | Property
			handled = true;
			onSymbol(symbol, accessChain);
		}

		if (symbol.flags & SymbolFlags.Module != 0) {
			// ValueModule | NamespaceModule
			handled = true;
			onSymbol(symbol, accessChain);

			var moduleMembers: Array<Symbol> = tc.getExportsOfModule(symbol).filter(s -> s.flags & SymbolFlags.ModuleMember != 0);
			for (moduleExport in moduleMembers) {
				walkDeclarationSymbols(moduleExport, tc, onSymbol, accessChain.concat([moduleExport]), log, depth + 1);
			}
		}

		if (!handled) {
			if (log != null) log.warn('Symbol was not handled in <b>walkDeclarationSymbols()</>', symbol);
		}
	}

	static inline function isPowerOfTwo(x: Int) {
		return (x & (x - 1)) == 0;
	}

	static var _symbolFlagsMap: Null<Map<String, Int>> = null;
	static function getSymbolFlagsMap(): Map<String, Int> {
		if (_symbolFlagsMap == null) {
			_symbolFlagsMap = new Map<String, Int>();
			var symbolFlagsStringKeys = js.lib.Object.keys(js.Syntax.code('require("typescript").SymbolFlags')).filter(key -> ~/[a-z_]/i.match(key));
			for (key in symbolFlagsStringKeys) {
				var value: Int = js.Syntax.field(js.Syntax.code('require("typescript").SymbolFlags'), key);
				_symbolFlagsMap.set(key, value);
			}
		}
		return _symbolFlagsMap;
	}

}