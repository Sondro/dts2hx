package three;
@:jsRequire("three", "MeshToonMaterial") extern class MeshToonMaterial extends MeshPhongMaterial {
	function new(?parameters:MeshToonMaterialParameters);
	var gradientMap : Null<Texture>;
}