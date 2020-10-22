package lodash;

typedef CurriedFunction4<T1, T2, T3, T4, R> = {
	@:overload(function(t1:T1):CurriedFunction3<T2, T3, T4, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2):CurriedFunction3<T1, T3, T4, R> { })
	@:overload(function(t1:T1, t2:T2):CurriedFunction2<T3, T4, R> { })
	@:overload(function(t1:LoDashStatic, t2:LoDashStatic, t3:T3):CurriedFunction3<T1, T2, T4, R> { })
	@:overload(function(t1:LoDashStatic, t2:LoDashStatic, t3:T3):CurriedFunction2<T2, T4, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2, t3:T3):CurriedFunction2<T1, T4, R> { })
	@:overload(function(t1:T1, t2:T2, t3:T3):CurriedFunction1<T4, R> { })
	@:overload(function(t1:LoDashStatic, t2:LoDashStatic, t3:LoDashStatic, t4:T4):CurriedFunction3<T1, T2, T3, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:LoDashStatic, t4:T4):CurriedFunction2<T2, T3, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2, t3:LoDashStatic, t4:T4):CurriedFunction2<T1, T3, R> { })
	@:overload(function(t1:LoDashStatic, t2:LoDashStatic, t3:T3, t4:T4):CurriedFunction2<T1, T2, R> { })
	@:overload(function(t1:T1, t2:T2, t3:LoDashStatic, t4:T4):CurriedFunction1<T3, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:T3, t4:T4):CurriedFunction1<T2, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2, t3:T3, t4:T4):CurriedFunction1<T1, R> { })
	@:overload(function(t1:T1, t2:T2, t3:T3, t4:T4):R { })
	@:selfCall
	function call():CurriedFunction4<T1, T2, T3, T4, R>;
};