package js.lib;
/**
	Automatically generated tuple type implementation
	Generated by dts2hx v0.0.4
**/
@:forward @:forwardStatics extern abstract Tuple2<Base, T0, T1>(std.Array<Base>) from std.Array<Base> to std.Array<Base> {
	public var element0(get, set) : T0;
	inline function get_element0():T0 return cast this[0];
	inline function set_element0(v:T0):T0 return cast this[0] = cast v;
	public var element1(get, set) : T1;
	inline function get_element1():T1 return cast this[1];
	inline function set_element1(v:T1):T1 return cast this[1] = cast v;
}