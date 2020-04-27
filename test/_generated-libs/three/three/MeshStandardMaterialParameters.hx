package three;
extern typedef MeshStandardMaterialParameters = MaterialParameters & { @:optional
	var color : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>; @:optional
	var roughness : Float; @:optional
	var metalness : Float; @:optional
	var map : Texture; @:optional
	var lightMap : Texture; @:optional
	var lightMapIntensity : Float; @:optional
	var aoMap : Texture; @:optional
	var aoMapIntensity : Float; @:optional
	var emissive : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>; @:optional
	var emissiveIntensity : Float; @:optional
	var emissiveMap : Texture; @:optional
	var bumpMap : Texture; @:optional
	var bumpScale : Float; @:optional
	var normalMap : Texture; @:optional
	var normalMapType : NormalMapTypes; @:optional
	var normalScale : Vector2; @:optional
	var displacementMap : Texture; @:optional
	var displacementScale : Float; @:optional
	var displacementBias : Float; @:optional
	var roughnessMap : Texture; @:optional
	var metalnessMap : Texture; @:optional
	var alphaMap : Texture; @:optional
	var envMap : Texture; @:optional
	var envMapIntensity : Float; @:optional
	var refractionRatio : Float; @:optional
	var wireframe : Bool; @:optional
	var wireframeLinewidth : Float; @:optional
	var skinning : Bool; @:optional
	var morphTargets : Bool; @:optional
	var morphNormals : Bool; };