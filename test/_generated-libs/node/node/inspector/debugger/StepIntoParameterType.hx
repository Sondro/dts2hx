package node.inspector.debugger;
extern typedef StepIntoParameterType = { /**
		Debugger will issue additional Debugger.paused notification if any async task is scheduled
		before next pause.
	**/
	@:optional
	var breakOnAsyncCall : Bool; };