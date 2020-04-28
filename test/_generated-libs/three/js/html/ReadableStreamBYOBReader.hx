package js.html;
extern interface ReadableStreamBYOBReader {
	final closed : js.lib.Promise<Void>;
	function cancel(?reason:Any):js.lib.Promise<Void>;
	function read<T:(js.lib.ArrayBufferView)>(view:T):js.lib.Promise<ReadableStreamReadResult<T>>;
	function releaseLock():Void;
}