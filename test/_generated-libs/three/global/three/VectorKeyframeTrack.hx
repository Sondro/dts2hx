package global.three;

@:native("THREE.VectorKeyframeTrack") extern class VectorKeyframeTrack extends KeyframeTrack {
	function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>, ?interpolation:InterpolationModes);
}