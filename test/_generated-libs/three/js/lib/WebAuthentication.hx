package js.lib;
@:native("WebAuthentication") @tsInterface extern class WebAuthentication {
	function new();
	function getAssertion(assertionChallenge:Null<haxe.extern.EitherType<Int8Array, haxe.extern.EitherType<Uint8Array, haxe.extern.EitherType<Uint8ClampedArray, haxe.extern.EitherType<Int16Array, haxe.extern.EitherType<Uint16Array, haxe.extern.EitherType<Int32Array, haxe.extern.EitherType<Uint32Array, haxe.extern.EitherType<Float32Array, haxe.extern.EitherType<Float64Array, haxe.extern.EitherType<ArrayBuffer, DataView>>>>>>>>>>>, ?options:js.html.AssertionOptions):Promise<js.html.WebAuthnAssertion>;
	@:overload(function(accountInformation:js.html.Account, cryptoParameters:Iterable<js.html.ScopedCredentialParameters>, attestationChallenge:Null<haxe.extern.EitherType<Int8Array, haxe.extern.EitherType<Uint8Array, haxe.extern.EitherType<Uint8ClampedArray, haxe.extern.EitherType<Int16Array, haxe.extern.EitherType<Uint16Array, haxe.extern.EitherType<Int32Array, haxe.extern.EitherType<Uint32Array, haxe.extern.EitherType<Float32Array, haxe.extern.EitherType<Float64Array, haxe.extern.EitherType<ArrayBuffer, DataView>>>>>>>>>>>, ?options:js.html.ScopedCredentialOptions):Promise<js.html.ScopedCredentialInfo> { })
	function makeCredential(accountInformation:js.html.Account, cryptoParameters:std.Array<js.html.ScopedCredentialParameters>, attestationChallenge:Null<haxe.extern.EitherType<Int8Array, haxe.extern.EitherType<Uint8Array, haxe.extern.EitherType<Uint8ClampedArray, haxe.extern.EitherType<Int16Array, haxe.extern.EitherType<Uint16Array, haxe.extern.EitherType<Int32Array, haxe.extern.EitherType<Uint32Array, haxe.extern.EitherType<Float32Array, haxe.extern.EitherType<Float64Array, haxe.extern.EitherType<ArrayBuffer, DataView>>>>>>>>>>>, ?options:js.html.ScopedCredentialOptions):Promise<js.html.ScopedCredentialInfo>;
	static var prototype : WebAuthentication;
}