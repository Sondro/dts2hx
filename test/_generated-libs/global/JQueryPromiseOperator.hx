package global;
extern typedef JQueryPromiseOperator<T, U> = {
	@:selfCall
	function call(callback1:haxe.extern.EitherType<JQueryPromiseCallback<T>, std.Array<JQueryPromiseCallback<T>>>, callbacksN:haxe.extern.Rest<haxe.extern.EitherType<JQueryPromiseCallback<Any>, std.Array<JQueryPromiseCallback<Any>>>>):JQueryPromise<U>;
};