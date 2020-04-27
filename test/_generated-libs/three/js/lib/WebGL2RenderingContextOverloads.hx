package js.lib;
extern interface WebGL2RenderingContextOverloads {
	@:overload(function(target:Float, srcData:Null<haxe.extern.EitherType<ArrayBuffer, ArrayBufferView>>, usage:Float):Void { })
	@:overload(function(target:Float, srcData:ArrayBufferView, usage:Float, srcOffset:Float, ?length:Float):Void { })
	function bufferData(target:Float, size:Float, usage:Float):Void;
	@:overload(function(target:Float, dstByteOffset:Float, srcData:ArrayBufferView, srcOffset:Float, ?length:Float):Void { })
	function bufferSubData(target:Float, dstByteOffset:Float, srcData:haxe.extern.EitherType<ArrayBuffer, ArrayBufferView>):Void;
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, srcData:ArrayBufferView, ?srcOffset:Float, ?srcLengthOverride:Float):Void { })
	function compressedTexImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, imageSize:Float, offset:Float):Void;
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, srcData:ArrayBufferView, ?srcOffset:Float, ?srcLengthOverride:Float):Void { })
	function compressedTexSubImage2D(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, imageSize:Float, offset:Float):Void;
	@:overload(function(x:Float, y:Float, width:Float, height:Float, format:Float, type:Float, offset:Float):Void { })
	@:overload(function(x:Float, y:Float, width:Float, height:Float, format:Float, type:Float, dstData:ArrayBufferView, dstOffset:Float):Void { })
	function readPixels(x:Float, y:Float, width:Float, height:Float, format:Float, type:Float, dstData:Null<ArrayBufferView>):Void;
	@:overload(function(target:Float, level:Float, internalformat:Float, format:Float, type:Float, source:haxe.extern.EitherType<js.html.HTMLCanvasElement, haxe.extern.EitherType<js.html.HTMLVideoElement, haxe.extern.EitherType<js.html.ImageData, haxe.extern.EitherType<js.html.HTMLImageElement, haxe.extern.EitherType<js.html.OffscreenCanvas, js.html.ImageBitmap>>>>>):Void { })
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, pboOffset:Float):Void { })
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, source:haxe.extern.EitherType<js.html.HTMLCanvasElement, haxe.extern.EitherType<js.html.HTMLVideoElement, haxe.extern.EitherType<js.html.ImageData, haxe.extern.EitherType<js.html.HTMLImageElement, haxe.extern.EitherType<js.html.OffscreenCanvas, js.html.ImageBitmap>>>>>):Void { })
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, srcData:ArrayBufferView, srcOffset:Float):Void { })
	function texImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, pixels:Null<ArrayBufferView>):Void;
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, format:Float, type:Float, source:haxe.extern.EitherType<js.html.HTMLCanvasElement, haxe.extern.EitherType<js.html.HTMLVideoElement, haxe.extern.EitherType<js.html.ImageData, haxe.extern.EitherType<js.html.HTMLImageElement, haxe.extern.EitherType<js.html.OffscreenCanvas, js.html.ImageBitmap>>>>>):Void { })
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, type:Float, pboOffset:Float):Void { })
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, type:Float, source:haxe.extern.EitherType<js.html.HTMLCanvasElement, haxe.extern.EitherType<js.html.HTMLVideoElement, haxe.extern.EitherType<js.html.ImageData, haxe.extern.EitherType<js.html.HTMLImageElement, haxe.extern.EitherType<js.html.OffscreenCanvas, js.html.ImageBitmap>>>>>):Void { })
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, type:Float, srcData:ArrayBufferView, srcOffset:Float):Void { })
	function texSubImage2D(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, type:Float, pixels:Null<ArrayBufferView>):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform1fv(location:Null<js.html.WebGLUniformLocation>, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform1iv(location:Null<js.html.WebGLUniformLocation>, data:haxe.extern.EitherType<Int32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform2fv(location:Null<js.html.WebGLUniformLocation>, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform2iv(location:Null<js.html.WebGLUniformLocation>, data:haxe.extern.EitherType<Int32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform3fv(location:Null<js.html.WebGLUniformLocation>, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform3iv(location:Null<js.html.WebGLUniformLocation>, data:haxe.extern.EitherType<Int32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform4fv(location:Null<js.html.WebGLUniformLocation>, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform4iv(location:Null<js.html.WebGLUniformLocation>, data:haxe.extern.EitherType<Int32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix2fv(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix3fv(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix4fv(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
}