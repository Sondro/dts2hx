package global.three;

@:native("THREE.ParametricBufferGeometry") extern class ParametricBufferGeometry extends BufferGeometry {
	function new(func:(u:Float, v:Float, dest:Vector3) -> Void, slices:Float, stacks:Float);
	var parameters : {
		dynamic function func(u:Float, v:Float, dest:Vector3):Void;
		var slices : Float;
		var stacks : Float;
	};
	function clone():ParametricBufferGeometry;
	function copy(source:BufferGeometry):ParametricBufferGeometry;
}