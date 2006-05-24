// $HeadURL$
// $Date$
// $Author$

// @author@	<shro8822@uidaho.edu>
// @date@	2006-05-23
// @uri@	news:bug-152-3@http.d.puremagic.com/bugzilla/

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.assert_15_A;

template T(int i){
	static assert(0);
	const int T = T!(i-1);
}

const int x = T!(1);
