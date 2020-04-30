package node;
@:jsRequire("dns") @valueModuleOnly extern class Dns {
	@:overload(function(hostname:String, options:node.dns.LookupOneOptions, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.LookupAllOptions, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.LookupAddress>) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.LookupOptions, callback:(err:global.nodejs.ErrnoException, address:haxe.extern.EitherType<String, std.Array<node.dns.LookupAddress>>, family:Float) -> Void):Void { })
	@:overload(function(hostname:String, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void):Void { })
	static function lookup(hostname:String, family:Float, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void):Void;
	static function lookupService(address:String, port:Float, callback:(err:global.nodejs.ErrnoException, hostname:String, service:String) -> Void):Void;
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<haxe.extern.EitherType<node.dns.AnyARecord, haxe.extern.EitherType<node.dns.AnyAaaaRecord, haxe.extern.EitherType<node.dns.AnyCnameRecord, haxe.extern.EitherType<node.dns.AnyMxRecord, haxe.extern.EitherType<node.dns.AnyNaptrRecord, haxe.extern.EitherType<node.dns.AnyNsRecord, haxe.extern.EitherType<node.dns.AnyPtrRecord, haxe.extern.EitherType<node.dns.AnySoaRecord, haxe.extern.EitherType<node.dns.AnySrvRecord, node.dns.AnyTxtRecord>>>>>>>>>>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.MxRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.NaptrRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:node.dns.SoaRecord) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.SrvRecord>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<std.Array<String>>) -> Void):Void { })
	@:overload(function(hostname:String, rrtype:String, callback:(err:global.nodejs.ErrnoException, addresses:haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<node.dns.SoaRecord, haxe.extern.EitherType<std.Array<haxe.extern.EitherType<node.dns.AnyARecord, haxe.extern.EitherType<node.dns.AnyAaaaRecord, haxe.extern.EitherType<node.dns.AnyCnameRecord, haxe.extern.EitherType<node.dns.AnyMxRecord, haxe.extern.EitherType<node.dns.AnyNaptrRecord, haxe.extern.EitherType<node.dns.AnyNsRecord, haxe.extern.EitherType<node.dns.AnyPtrRecord, haxe.extern.EitherType<node.dns.AnySoaRecord, haxe.extern.EitherType<node.dns.AnySrvRecord, node.dns.AnyTxtRecord>>>>>>>>>>, haxe.extern.EitherType<std.Array<node.dns.MxRecord>, haxe.extern.EitherType<std.Array<node.dns.NaptrRecord>, haxe.extern.EitherType<std.Array<node.dns.SrvRecord>, std.Array<std.Array<String>>>>>>>>) -> Void):Void { })
	static function resolve(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:haxe.extern.EitherType<std.Array<String>, std.Array<node.dns.RecordWithTtl>>) -> Void):Void { })
	static function resolve4(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	@:overload(function(hostname:String, options:node.dns.ResolveWithTtlOptions, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:node.dns.ResolveOptions, callback:(err:global.nodejs.ErrnoException, addresses:haxe.extern.EitherType<std.Array<String>, std.Array<node.dns.RecordWithTtl>>) -> Void):Void { })
	static function resolve6(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	static function resolveCname(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	static function resolveMx(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.MxRecord>) -> Void):Void;
	static function resolveNaptr(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.NaptrRecord>) -> Void):Void;
	static function resolveNs(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	static function resolvePtr(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<String>) -> Void):Void;
	static function resolveSoa(hostname:String, callback:(err:global.nodejs.ErrnoException, address:node.dns.SoaRecord) -> Void):Void;
	static function resolveSrv(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<node.dns.SrvRecord>) -> Void):Void;
	static function resolveTxt(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<std.Array<String>>) -> Void):Void;
	static function resolveAny(hostname:String, callback:(err:global.nodejs.ErrnoException, addresses:std.Array<haxe.extern.EitherType<node.dns.AnyARecord, haxe.extern.EitherType<node.dns.AnyAaaaRecord, haxe.extern.EitherType<node.dns.AnyCnameRecord, haxe.extern.EitherType<node.dns.AnyMxRecord, haxe.extern.EitherType<node.dns.AnyNaptrRecord, haxe.extern.EitherType<node.dns.AnyNsRecord, haxe.extern.EitherType<node.dns.AnyPtrRecord, haxe.extern.EitherType<node.dns.AnySoaRecord, haxe.extern.EitherType<node.dns.AnySrvRecord, node.dns.AnyTxtRecord>>>>>>>>>>) -> Void):Void;
	static function reverse(ip:String, callback:(err:global.nodejs.ErrnoException, hostnames:std.Array<String>) -> Void):Void;
	static function setServers(servers:std.Array<String>):Void;
	static function getServers():std.Array<String>;
	static var ADDRCONFIG : Float;
	static var V4MAPPED : Float;
	static var NODATA : String;
	static var FORMERR : String;
	static var SERVFAIL : String;
	static var NOTFOUND : String;
	static var NOTIMP : String;
	static var REFUSED : String;
	static var BADQUERY : String;
	static var BADNAME : String;
	static var BADFAMILY : String;
	static var BADRESP : String;
	static var CONNREFUSED : String;
	static var TIMEOUT : String;
	static var EOF : String;
	static var FILE : String;
	static var NOMEM : String;
	static var DESTRUCTION : String;
	static var BADSTR : String;
	static var BADFLAGS : String;
	static var NONAME : String;
	static var BADHINTS : String;
	static var NOTINITIALIZED : String;
	static var LOADIPHLPAPI : String;
	static var ADDRGETNETWORKPARAMS : String;
	static var CANCELLED : String;
}