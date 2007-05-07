// $HeadURL$
// $Date$
// $Author$

// @author@	Kazuhiro Inaba <kinaba@is.s.u-tokyo.ac.jp>
// @date@	2006-10-20
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=444
// @desc@	[Issue 444] New: Inside a foreach with delegates, void return does not compile

module dstress.compile.r.return_10_A;

void foo(){
	int nothing( int delegate(ref int) dg ){
		return 0;
	}

	foreach(int x; &nothing){
		return;
	}
}

