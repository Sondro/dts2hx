package ts.lib;
/**
	A set of space-separated tokens. Such a set is returned by Element.classList, HTMLLinkElement.relList, HTMLAnchorElement.relList, HTMLAreaElement.relList, HTMLIframeElement.sandbox, or HTMLOutputElement.htmlFor. It is indexed beginning with 0 as with JavaScript Array objects. DOMTokenList is always case-sensitive.
**/
extern typedef IDOMTokenList = {
	/**
		Returns the number of tokens.
	**/
	final length : Float;
	/**
		Returns the associated set as string.
		
		Can be set, to change the associated attribute.
	**/
	var value : String;
	/**
		Adds all arguments passed, except those already present.
		
		Throws a "SyntaxError" DOMException if one of the arguments is the empty string.
		
		Throws an "InvalidCharacterError" DOMException if one of the arguments contains any ASCII whitespace.
	**/
	function add(tokens:std.Array<String>):Void;
	/**
		Returns true if token is present, and false otherwise.
	**/
	function contains(token:String):Bool;
	/**
		Returns the token with index index.
	**/
	function item(index:Float):Null<String>;
	/**
		Removes arguments passed, if they are present.
		
		Throws a "SyntaxError" DOMException if one of the arguments is the empty string.
		
		Throws an "InvalidCharacterError" DOMException if one of the arguments contains any ASCII whitespace.
	**/
	function remove(tokens:std.Array<String>):Void;
	/**
		Replaces token with newToken.
		
		Returns true if token was replaced with newToken, and false otherwise.
		
		Throws a "SyntaxError" DOMException if one of the arguments is the empty string.
		
		Throws an "InvalidCharacterError" DOMException if one of the arguments contains any ASCII whitespace.
	**/
	function replace(oldToken:String, newToken:String):Void;
	/**
		Returns true if token is in the associated attribute's supported tokens. Returns false otherwise.
		
		Throws a TypeError if the associated attribute has no supported tokens defined.
	**/
	function supports(token:String):Bool;
	/**
		If force is not given, "toggles" token, removing it if it's present and adding it if it's not present. If force is true, adds token (same as add()). If force is false, removes token (same as remove()).
		
		Returns true if token is now present, and false otherwise.
		
		Throws a "SyntaxError" DOMException if token is empty.
		
		Throws an "InvalidCharacterError" DOMException if token contains any spaces.
	**/
	function toggle(token:String, ?force:Bool):Bool;
	function forEach(callbackfn:(value:String, key:Float, parent:IDOMTokenList) -> Void, ?thisArg:Any):Void;
	function entries():IterableIterator<ts.lib.Tuple2<Float, String>>;
	function keys():IterableIterator<Float>;
	function values():IterableIterator<String>;
};