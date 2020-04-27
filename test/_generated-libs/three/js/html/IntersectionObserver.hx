package js.html;
/**
	provides a way to asynchronously observe changes in the intersection of a target element with an ancestor element or with a top-level document's viewport.
**/
@:native("IntersectionObserver") @tsInterface extern class IntersectionObserver {
	function new(callback:IntersectionObserverCallback, ?options:IntersectionObserverInit);
	final root : Null<Element>;
	final rootMargin : String;
	final thresholds : js.lib.ReadonlyArray<Float>;
	function disconnect():Void;
	function observe(target:Element):Void;
	function takeRecords():std.Array<IntersectionObserverEntry>;
	function unobserve(target:Element):Void;
	static var prototype : IntersectionObserver;
}