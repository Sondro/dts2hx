package js.html;
extern typedef XPathEvaluatorBase = { function createExpression(expression:String, ?resolver:haxe.extern.EitherType<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>):XPathExpression; function createNSResolver(nodeResolver:Node):haxe.extern.EitherType<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>; function evaluate(expression:String, contextNode:Node, ?resolver:haxe.extern.EitherType<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>, ?type:Float, ?result:XPathResult):XPathResult; };