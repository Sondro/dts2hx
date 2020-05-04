package ts.html;
typedef ResponseInit = {
	@:optional
	var headers : ts.AnyOf3<ts.lib.IHeaders, Array<Array<String>>, { }>;
	@:optional
	var status : Float;
	@:optional
	var statusText : String;
};