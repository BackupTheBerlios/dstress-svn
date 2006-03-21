// $HeadURL$
// $Date$
// $Author$

// @author@	<benoit@tionex.de>
// @date@	2006-03-09
// @uri@	news:bug-30-3@http.d.puremagic.com/bugzilla/

// __DSTRESS_DFLAGS__ run/f/function_05_B.d

module /*dstress.*/run.f.function_05_A;
import /*dstress.*/run.f.function_05_B;

C func(aliasFunc f){
	return f();
}
