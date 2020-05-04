package ts.html;
/**
	provides a way to asynchronously observe changes in the intersection of a target element with an ancestor element or with a top-level document's viewport.
**/
@:native("IntersectionObserver") extern class IntersectionObserver {
	function new(callback:IntersectionObserverCallback, ?options:IntersectionObserverInit);
	final root : Null<IElement>;
	final rootMargin : String;
	final thresholds : ts.lib.ReadonlyArray<Float>;
	function disconnect():Void;
	function observe(target:IElement):Void;
	function takeRecords():Array<IIntersectionObserverEntry>;
	function unobserve(target:IElement):Void;
	static var prototype : IIntersectionObserver;
}