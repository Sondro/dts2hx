package ts.html;
/**
	A simple low-order filter, and is created using the AudioContext.createBiquadFilter() method. It is an AudioNode that can represent different kinds of filters, tone control devices, and graphic equalizers.
**/
extern typedef IBiquadFilterNode = {
	final Q : ts.lib.IAudioParam;
	final detune : ts.lib.IAudioParam;
	final frequency : ts.lib.IAudioParam;
	final gain : ts.lib.IAudioParam;
	var type : String;
	function getFrequencyResponse(frequencyHz:ts.lib.IFloat32Array, magResponse:ts.lib.IFloat32Array, phaseResponse:ts.lib.IFloat32Array):Void;
	var channelCount : Float;
	var channelCountMode : String;
	var channelInterpretation : String;
	final context : ts.lib.IBaseAudioContext;
	final numberOfInputs : Float;
	final numberOfOutputs : Float;
	@:overload(function(destinationParam:ts.lib.IAudioParam, ?output:Float):Void { })
	function connect(destinationNode:IAudioNode, ?output:Float, ?input:Float):IAudioNode;
	@:overload(function(output:Float):Void { })
	@:overload(function(destinationNode:IAudioNode):Void { })
	@:overload(function(destinationNode:IAudioNode, output:Float):Void { })
	@:overload(function(destinationNode:IAudioNode, output:Float, input:Float):Void { })
	@:overload(function(destinationParam:ts.lib.IAudioParam):Void { })
	@:overload(function(destinationParam:ts.lib.IAudioParam, output:Float):Void { })
	function disconnect():Void;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	function addEventListener(type:String, listener:Null<haxe.extern.EitherType<EventListener, EventListenerObject>>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:IEvent):Bool;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	function removeEventListener(type:String, callback:Null<haxe.extern.EitherType<EventListener, EventListenerObject>>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
};