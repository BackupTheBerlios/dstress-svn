// $HeadURL$
// $Date$
// $Author$

// @author@	<benoit@tionex.de>
// @date@	2006-03-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=30

// __DSTRESS_DFLAGS__ run/f/function_05_B.d

module /*dstress.*/run.f.function_05_A;
import /*dstress.*/run.f.function_05_B;

C func(aliasFunc f){
	return f();
}
