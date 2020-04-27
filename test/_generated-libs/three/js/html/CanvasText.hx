package js.html;
extern interface CanvasText {
	function fillText(text:String, x:Float, y:Float, ?maxWidth:Float):Void;
	function measureText(text:String):TextMetrics;
	function strokeText(text:String, x:Float, y:Float, ?maxWidth:Float):Void;
}