package node.http2;
typedef ServerStreamFileResponseOptionsWithError = {
	@:optional
	var onError : (err:global.nodejs.ErrnoException) -> Void;
	@:optional
	var statCheck : (stats:node.fs.Stats, headers:node.http.OutgoingHttpHeaders, statOptions:StatOptions) -> ts.AnyOf2<Bool, Void>;
	@:optional
	var getTrailers : (trailers:node.http.OutgoingHttpHeaders) -> Void;
	@:optional
	var offset : Float;
	@:optional
	var length : Float;
};