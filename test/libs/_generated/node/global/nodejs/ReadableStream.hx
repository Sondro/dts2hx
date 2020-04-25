package global.nodejs;
extern interface ReadableStream extends EventEmitter {
	var readable : Bool;
	function read(?size:Float):haxe.extern.EitherType<String, global.Buffer>;
	function setEncoding(encoding:String):ReadableStream;
	function pause():ReadableStream;
	function resume():ReadableStream;
	function isPaused():Bool;
	function pipe<T:(WritableStream)>(destination:T, ?options:{ @:optional
	var end : Null<Bool>; }):T;
	function unpipe(?destination:WritableStream):ReadableStream;
	@:overload(function(chunk:global.Buffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:ReadableStream):ReadableStream;
}