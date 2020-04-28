package js.html;
extern interface CanvasTransform {
	function getTransform():DOMMatrix;
	function resetTransform():Void;
	function rotate(angle:Float):Void;
	function scale(x:Float, y:Float):Void;
	@:overload(function(?transform:DOMMatrix2DInit):Void { })
	function setTransform(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Void;
	function transform(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Void;
	function translate(x:Float, y:Float):Void;
}