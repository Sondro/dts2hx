package ts.html;
/**
	This Push API interface provides a way to receive notifications from third-party servers as well as request URLs for push notifications.
**/
typedef IPushManager = {
	function getSubscription():ts.lib.IPromise<Null<IPushSubscription>>;
	function permissionState(?options:PushSubscriptionOptionsInit):ts.lib.IPromise<PermissionState>;
	function subscribe(?options:PushSubscriptionOptionsInit):ts.lib.IPromise<IPushSubscription>;
};