package three;
extern interface LoaderHandler {
	var handlers : std.Array<haxe.extern.EitherType<js.lib.RegExp, AnyLoader>>;
	function add(regex:js.lib.RegExp, loader:AnyLoader):Void;
	function get(file:String):Null<AnyLoader>;
}