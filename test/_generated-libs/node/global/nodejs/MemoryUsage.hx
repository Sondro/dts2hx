package global.nodejs;
extern interface MemoryUsage {
	var rss : Float;
	var heapTotal : Float;
	var heapUsed : Float;
	var external : Float;
}