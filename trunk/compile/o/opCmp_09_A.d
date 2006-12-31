// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Sauls <ibisbasenji@gmail.com>
// @date@	2006-12-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=772
// @desc@	[Issue 772] Bogus error using relation operator as static if expression within template

module dstress.compile.o.opCmp_09_A;

template Templ (ulong n) {
	static if (n > 10_LU) {
		static assert(0);
	}
}

mixin Templ!(1_LU);

