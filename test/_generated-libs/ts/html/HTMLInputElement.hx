package ts.html;
/**
	Provides special properties and methods for manipulating the options, layout, and presentation of <input> elements.
**/
@:native("HTMLInputElement") extern class HTMLInputElement {
	function new();
	/**
		Sets or retrieves a comma-separated list of content types.
	**/
	var accept : String;
	var align : String;
	/**
		Sets or retrieves a text alternative to the graphic.
	**/
	var alt : String;
	/**
		Specifies whether autocomplete is applied to an editable text field.
	**/
	var autocomplete : String;
	/**
		Provides a way to direct a user to a specific field when a document loads. This can provide both direction and convenience for a user, reducing the need to click or tab to a field when a page opens. This attribute is true when present on an element, and false when missing.
	**/
	var autofocus : Bool;
	/**
		Sets or retrieves the state of the check box or radio button.
	**/
	var checked : Bool;
	/**
		Sets or retrieves the state of the check box or radio button.
	**/
	var defaultChecked : Bool;
	/**
		Sets or retrieves the initial contents of the object.
	**/
	var defaultValue : String;
	var dirName : String;
	var disabled : Bool;
	/**
		Returns a FileList object on a file type input object.
	**/
	var files : Null<ts.lib.IFileList>;
	/**
		Retrieves a reference to the form that the object is embedded in.
	**/
	final form : Null<ts.lib.IHTMLFormElement>;
	/**
		Overrides the action attribute (where the data on a form is sent) on the parent form element.
	**/
	var formAction : String;
	/**
		Used to override the encoding (formEnctype attribute) specified on the form element.
	**/
	var formEnctype : String;
	/**
		Overrides the submit method attribute previously specified on a form element.
	**/
	var formMethod : String;
	/**
		Overrides any validation or required attributes on a form or form elements to allow it to be submitted without validation. This can be used to create a "save draft"-type submit option.
	**/
	var formNoValidate : Bool;
	/**
		Overrides the target attribute on a form element.
	**/
	var formTarget : String;
	/**
		Sets or retrieves the height of the object.
	**/
	var height : Float;
	var indeterminate : Bool;
	final labels : Null<ts.lib.NodeListOf<IHTMLLabelElement>>;
	/**
		Specifies the ID of a pre-defined datalist of options for an input element.
	**/
	final list : Null<IHTMLElement>;
	/**
		Defines the maximum acceptable value for an input element with type="number".When used with the min and step attributes, lets you control the range and increment (such as only even numbers) that the user can enter into an input field.
	**/
	var max : String;
	/**
		Sets or retrieves the maximum number of characters that the user can enter in a text control.
	**/
	var maxLength : Float;
	/**
		Defines the minimum acceptable value for an input element with type="number". When used with the max and step attributes, lets you control the range and increment (such as even numbers only) that the user can enter into an input field.
	**/
	var min : String;
	var minLength : Float;
	/**
		Sets or retrieves the Boolean value indicating whether multiple items can be selected from a list.
	**/
	var multiple : Bool;
	/**
		Sets or retrieves the name of the object.
	**/
	var name : String;
	/**
		Gets or sets a string containing a regular expression that the user's input must match.
	**/
	var pattern : String;
	/**
		Gets or sets a text string that is displayed in an input field as a hint or prompt to users as the format or type of information they need to enter.The text appears in an input field until the user puts focus on the field.
	**/
	var placeholder : String;
	var readOnly : Bool;
	/**
		When present, marks an element that can't be submitted without a value.
	**/
	var required : Bool;
	var selectionDirection : Null<String>;
	/**
		Gets or sets the end position or offset of a text selection.
	**/
	var selectionEnd : Null<Float>;
	/**
		Gets or sets the starting position or offset of a text selection.
	**/
	var selectionStart : Null<Float>;
	var size : Float;
	/**
		The address or URL of the a media resource that is to be considered.
	**/
	var src : String;
	/**
		Defines an increment or jump between values that you want to allow the user to enter. When used with the max and min attributes, lets you control the range and increment (for example, allow only even numbers) that the user can enter into an input field.
	**/
	var step : String;
	/**
		Returns the content type of the object.
	**/
	var type : String;
	var useMap : String;
	/**
		Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
	**/
	final validationMessage : String;
	/**
		Returns a  ValidityState object that represents the validity states of an element.
	**/
	final validity : IValidityState;
	/**
		Returns the value of the data at the cursor's current position.
	**/
	var value : String;
	/**
		Returns a Date object representing the form control's value, if applicable; otherwise, returns null. Can be set, to change the value. Throws an "InvalidStateError" DOMException if the control isn't date- or time-based.
	**/
	var valueAsDate : Null<ts.lib.IDate>;
	/**
		Returns the input field value as a number.
	**/
	var valueAsNumber : Float;
	/**
		Sets or retrieves the width of the object.
	**/
	var width : Float;
	/**
		Returns whether an element will successfully validate based on forms validation rules and constraints.
	**/
	final willValidate : Bool;
	/**
		Returns whether a form will validate when it is submitted, without having to submit it.
	**/
	function checkValidity():Bool;
	function reportValidity():Bool;
	/**
		Makes the selection equal to the current object.
	**/
	function select():Void;
	/**
		Sets a custom error message that is displayed when a form is submitted.
	**/
	function setCustomValidity(error:String):Void;
	@:overload(function(replacement:String, start:Float, end:Float, ?selectionMode:String):Void { })
	function setRangeText(replacement:String):Void;
	/**
		Sets the start and end positions of a selection in a text field.
	**/
	function setSelectionRange(start:Float, end:Float, ?direction:String):Void;
	/**
		Decrements a range input control's value by the value given by the Step attribute. If the optional parameter is used, it will decrement the input control's step value multiplied by the parameter's value.
	**/
	function stepDown(?n:Float):Void;
	/**
		Increments a range input control's value by the value given by the Step attribute. If the optional parameter is used, will increment the input control's value by that value.
	**/
	function stepUp(?n:Float):Void;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:haxe.extern.EitherType<IEvent, haxe.extern.EitherType<IClipboardEvent, haxe.extern.EitherType<IUIEvent, haxe.extern.EitherType<IDragEvent, haxe.extern.EitherType<IMouseEvent, haxe.extern.EitherType<IErrorEvent, haxe.extern.EitherType<IFocusEvent, haxe.extern.EitherType<IKeyboardEvent, haxe.extern.EitherType<IPointerEvent, haxe.extern.EitherType<IProgressEvent<IEventTarget>, haxe.extern.EitherType<ISecurityPolicyViolationEvent, haxe.extern.EitherType<ITouchEvent, haxe.extern.EitherType<ITransitionEvent, haxe.extern.EitherType<IWheelEvent, IAnimationEvent>>>>>>>>>>>>>>) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:haxe.extern.EitherType<IEvent, haxe.extern.EitherType<IClipboardEvent, haxe.extern.EitherType<IUIEvent, haxe.extern.EitherType<IDragEvent, haxe.extern.EitherType<IMouseEvent, haxe.extern.EitherType<IErrorEvent, haxe.extern.EitherType<IFocusEvent, haxe.extern.EitherType<IKeyboardEvent, haxe.extern.EitherType<IPointerEvent, haxe.extern.EitherType<IProgressEvent<IEventTarget>, haxe.extern.EitherType<ISecurityPolicyViolationEvent, haxe.extern.EitherType<ITouchEvent, haxe.extern.EitherType<ITransitionEvent, haxe.extern.EitherType<IWheelEvent, IAnimationEvent>>>>>>>>>>>>>>) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
	static var prototype : IHTMLInputElement;
}