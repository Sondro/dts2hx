package node.dns;
@:jsRequire("dns", "Resolver") extern class Resolver {
	var getServers : () -> std.Array<String>;
	var setServers : (servers:std.Array<String>) -> Void;
	var resolve : {
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<AnyRecord>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<MxRecord>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<NaptrRecord>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:SoaRecord) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<SrvRecord>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<std.Array<String>>) -> Void):Void { })
		@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf7<std.Array<String>, SoaRecord, std.Array<AnyRecord>, std.Array<MxRecord>, std.Array<NaptrRecord>, std.Array<SrvRecord>, std.Array<std.Array<String>>>) -> Void):Void { })
		@:selfCall
		function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	};
	var resolve4 : {
		@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<RecordWithTtl>) -> Void):Void { })
		@:overload(function(hostname:String, options:ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf2<std.Array<String>, std.Array<RecordWithTtl>>) -> Void):Void { })
		@:selfCall
		function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	};
	var resolve6 : {
		@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<RecordWithTtl>) -> Void):Void { })
		@:overload(function(hostname:String, options:ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:ts.AnyOf2<std.Array<String>, std.Array<RecordWithTtl>>) -> Void):Void { })
		@:selfCall
		function call(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	};
	var resolveAny : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<AnyRecord>) -> Void) -> Void;
	var resolveCname : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void) -> Void;
	var resolveMx : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<MxRecord>) -> Void) -> Void;
	var resolveNaptr : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<NaptrRecord>) -> Void) -> Void;
	var resolveNs : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void) -> Void;
	var resolvePtr : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void) -> Void;
	var resolveSoa : (hostname:String, callback:(err:global.nodejs.ErrnoException, address:SoaRecord) -> Void) -> Void;
	var resolveSrv : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<SrvRecord>) -> Void) -> Void;
	var resolveTxt : (hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<std.Array<String>>) -> Void) -> Void;
	var reverse : (ip:String, callback:(err:global.nodejs.ErrnoException, hostnames:std.Array<String>) -> Void) -> Void;
	function cancel():Void;
}