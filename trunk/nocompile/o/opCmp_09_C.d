// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Sauls <ibisbasenji@gmail.com>
// @date@	2006-12-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=772
// @desc@	[Issue 772] Bogus error using relation operator as static if expression within template

// __DSTRESS_ELINE__ 23

module dstress.nocompile.o.opCmp_09_C;

template Templ (ulong n) {
	static if (n < 10_LU) {
		const Templ = 9.8;
	}
}

int main(char[][] args){
	long l = args.length;

	auto a = Templ!(l);
	
	return 0;
}

