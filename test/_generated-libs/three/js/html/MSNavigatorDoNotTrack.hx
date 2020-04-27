package js.html;
extern interface MSNavigatorDoNotTrack {
	function confirmSiteSpecificTrackingException(args:ConfirmSiteSpecificExceptionsInformation):Bool;
	function confirmWebWideTrackingException(args:ExceptionInformation):Bool;
	function removeSiteSpecificTrackingException(args:ExceptionInformation):Void;
	function removeWebWideTrackingException(args:ExceptionInformation):Void;
	function storeSiteSpecificTrackingException(args:StoreSiteSpecificExceptionsInformation):Void;
	function storeWebWideTrackingException(args:StoreExceptionsInformation):Void;
}