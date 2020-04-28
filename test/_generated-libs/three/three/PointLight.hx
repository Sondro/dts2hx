package three;
/**
	Affects objects using {@link MeshLambertMaterial} or {@link MeshPhongMaterial}.
**/
@:jsRequire("three", "PointLight") extern class PointLight extends Light {
	function new(?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>, ?intensity:Float, ?distance:Float, ?decay:Float);
	var intensity : Float;
	/**
		If non-zero, light will attenuate linearly from maximum intensity at light position down to zero at distance.
		Default — 0.0.
	**/
	var distance : Float;
	var decay : Float;
	var shadow : PointLightShadow;
	var power : Float;
}