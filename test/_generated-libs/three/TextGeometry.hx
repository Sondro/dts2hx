package three;
@:jsRequire("three", "TextGeometry") extern class TextGeometry extends ExtrudeGeometry {
	function new(text:String, ?parameters:TextGeometryParameters);
	var parameters : {
		var font : Font;
		var size : Float;
		var height : Float;
		var curveSegments : Float;
		var bevelEnabled : Bool;
		var bevelThickness : Float;
		var bevelSize : Float;
		var bevelOffset : Float;
		var bevelSegments : Float;
	};
}