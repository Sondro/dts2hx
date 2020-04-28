package js.html;
extern interface JsonWebKey {
	@:optional
	var alg : String;
	@:optional
	var crv : String;
	@:optional
	var d : String;
	@:optional
	var dp : String;
	@:optional
	var dq : String;
	@:optional
	var e : String;
	@:optional
	var ext : Bool;
	@:optional
	var k : String;
	@:optional
	var key_ops : std.Array<String>;
	@:optional
	var kty : String;
	@:optional
	var n : String;
	@:optional
	var oth : std.Array<RsaOtherPrimesInfo>;
	@:optional
	var p : String;
	@:optional
	var q : String;
	@:optional
	var qi : String;
	@:optional
	var use : String;
	@:optional
	var x : String;
	@:optional
	var y : String;
}