package ts.lib;
/**
	Creates a new function.
**/
@:native("Function") extern class Function {
	/**
		Creates a new function.
	**/
	function new(args:haxe.extern.Rest<String>);
	/**
		Calls the function, substituting the specified object for the this value of the function, and the specified array for the arguments of the function.
	**/
	function apply(thisArg:Any, ?argArray:Any):Any;
	/**
		Calls a method of an object, substituting another object for the current object.
	**/
	function call(thisArg:Any, argArray:haxe.extern.Rest<Any>):Any;
	/**
		For a given function, creates a bound function that has the same body as the original function.
		The this object of the bound function is associated with the specified object, and has the specified initial parameters.
	**/
	function bind(thisArg:Any, argArray:haxe.extern.Rest<Any>):Any;
	/**
		Returns a string representation of a function.
	**/
	function toString():String;
	var prototype : Any;
	final length : Float;
	var arguments : Any;
	var caller : IFunction;
	/**
		Returns the name of the function. Function names are read-only and can not be changed.
	**/
	final name : String;
	@:selfCall
	static function call_(args:haxe.extern.Rest<String>):IFunction;
	@:native("prototype")
	static final prototype_ : IFunction;
}