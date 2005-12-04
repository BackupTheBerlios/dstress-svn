// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-28
// @uri@	news:dmeulv$2542$1@digitaldaemon.com

// __DSTRESS_ELINE__ 15

module dstress.nocompile.b.bug_cgcod_562_J1;

template test( T : T[] ){
	void test( T[] data ) {
		data[0] /= cast(cfloat)data.length;
	}
}

alias test!(double[]) bug;

void main(){
	double[1] array;
	bug(array);
}

