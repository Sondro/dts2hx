package node.http2;
extern interface ServerHttp2Session extends Http2Session {
	function altsvc(alt:String, originOrStream:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<node.url.URL, AlternativeServiceOptions>>>):Void;
	final server : haxe.extern.EitherType<Http2Server, Http2SecureServer>;
	@:overload(function(event:String, listener:(session:ServerHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):ServerHttp2Session;
	@:overload(function(event:String, session:ServerHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>):Bool { })
	@:overload(function(event:String, stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(session:ServerHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):ServerHttp2Session;
	@:overload(function(event:String, listener:(session:ServerHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):ServerHttp2Session;
	@:overload(function(event:String, listener:(session:ServerHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):ServerHttp2Session;
	@:overload(function(event:String, listener:(session:ServerHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):ServerHttp2Session;
}