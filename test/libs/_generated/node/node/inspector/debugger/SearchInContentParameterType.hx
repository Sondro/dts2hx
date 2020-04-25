package node.inspector.debugger;
extern interface SearchInContentParameterType {
	/**
		Id of the script to search in.
	**/
	var scriptId : String;
	/**
		String to search for.
	**/
	var query : String;
	/**
		If true, search is case sensitive.
	**/
	@:optional
	var caseSensitive : Null<Bool>;
	/**
		If true, treats string parameter as regex.
	**/
	@:optional
	var isRegex : Null<Bool>;
}