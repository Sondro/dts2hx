package global.three;

@:native("THREE.Float32BufferAttribute") extern class Float32BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.ArrayLike<Float>, Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	function clone():Float32BufferAttribute;
	function copy(source:BufferAttribute):Float32BufferAttribute;
}