package js.lib;
extern interface WebGLRenderingContextOverloads {
	@:overload(function(target:Float, data:Null<haxe.extern.EitherType<ArrayBuffer, ArrayBufferView>>, usage:Float):Void { })
	function bufferData(target:Float, size:Float, usage:Float):Void;
	function bufferSubData(target:Float, offset:Float, data:haxe.extern.EitherType<ArrayBuffer, ArrayBufferView>):Void;
	function compressedTexImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, data:ArrayBufferView):Void;
	function compressedTexSubImage2D(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, data:ArrayBufferView):Void;
	function readPixels(x:Float, y:Float, width:Float, height:Float, format:Float, type:Float, pixels:Null<ArrayBufferView>):Void;
	@:overload(function(target:Float, level:Float, internalformat:Float, format:Float, type:Float, source:haxe.extern.EitherType<js.html.HTMLCanvasElement, haxe.extern.EitherType<js.html.HTMLVideoElement, haxe.extern.EitherType<js.html.ImageData, haxe.extern.EitherType<js.html.HTMLImageElement, haxe.extern.EitherType<js.html.OffscreenCanvas, js.html.ImageBitmap>>>>>):Void { })
	function texImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, pixels:Null<ArrayBufferView>):Void;
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, format:Float, type:Float, source:haxe.extern.EitherType<js.html.HTMLCanvasElement, haxe.extern.EitherType<js.html.HTMLVideoElement, haxe.extern.EitherType<js.html.ImageData, haxe.extern.EitherType<js.html.HTMLImageElement, haxe.extern.EitherType<js.html.OffscreenCanvas, js.html.ImageBitmap>>>>>):Void { })
	function texSubImage2D(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, type:Float, pixels:Null<ArrayBufferView>):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, v:Iterable<Float>):Void { })
	function uniform1fv(location:Null<js.html.WebGLUniformLocation>, v:haxe.extern.EitherType<Float32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, v:Iterable<Float>):Void { })
	function uniform1iv(location:Null<js.html.WebGLUniformLocation>, v:haxe.extern.EitherType<Int32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, v:Iterable<Float>):Void { })
	function uniform2fv(location:Null<js.html.WebGLUniformLocation>, v:haxe.extern.EitherType<Float32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, v:Iterable<Float>):Void { })
	function uniform2iv(location:Null<js.html.WebGLUniformLocation>, v:haxe.extern.EitherType<Int32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, v:Iterable<Float>):Void { })
	function uniform3fv(location:Null<js.html.WebGLUniformLocation>, v:haxe.extern.EitherType<Float32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, v:Iterable<Float>):Void { })
	function uniform3iv(location:Null<js.html.WebGLUniformLocation>, v:haxe.extern.EitherType<Int32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, v:Iterable<Float>):Void { })
	function uniform4fv(location:Null<js.html.WebGLUniformLocation>, v:haxe.extern.EitherType<Float32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, v:Iterable<Float>):Void { })
	function uniform4iv(location:Null<js.html.WebGLUniformLocation>, v:haxe.extern.EitherType<Int32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, value:Iterable<Float>):Void { })
	function uniformMatrix2fv(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, value:haxe.extern.EitherType<Float32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, value:Iterable<Float>):Void { })
	function uniformMatrix3fv(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, value:haxe.extern.EitherType<Float32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, value:Iterable<Float>):Void { })
	function uniformMatrix4fv(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, value:haxe.extern.EitherType<Float32Array, std.Array<Float>>):Void;
}