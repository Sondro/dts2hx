package js.lib;
extern interface HTMLCollectionOf<T:(js.html.Element)> extends HTMLCollectionBase {
	/**
		Retrieves an object from various collections.
	**/
	function item(index:Float):Null<T>;
	function namedItem(name:String):Null<T>;
}