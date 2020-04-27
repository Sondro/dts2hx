package js.lib;
extern typedef ReadonlySet<T> = { function forEach(callbackfn:(value:T, value2:T, set:ReadonlySet<T>) -> Void, ?thisArg:Any):Void; function has(value:T):Bool; final size : Float; /**
		Returns an iterable of [v,v] pairs for every value `v` in the set.
	**/
	function entries():IterableIterator<js.lib.Tuple2<T, T>>; /**
		Despite its name, returns an iterable of the values in the set,
	**/
	function keys():IterableIterator<T>; /**
		Returns an iterable of values in the set.
	**/
	function values():IterableIterator<T>; };