package js.html;
extern interface MediaStreamConstraints {
	@:optional
	var audio : haxe.extern.EitherType<Bool, MediaTrackConstraints>;
	@:optional
	var peerIdentity : String;
	@:optional
	var video : haxe.extern.EitherType<Bool, MediaTrackConstraints>;
}