package three;
@:jsRequire("three", "DataTexture3D") extern class DataTexture3D extends Texture {
	function new(data:TypedArray, width:Float, height:Float, depth:Float);
}