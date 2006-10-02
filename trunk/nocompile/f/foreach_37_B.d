// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant@gmail.com>	
// @date@	2006-09-20
// @uri@	news:bug-297-3@http.d.puremagic.com/issues/
// @desc@	[Issue 297] New: Shadowing declarations allowed in foreach type lists

// __DSTRESS_ELINE__ 18

module dstress.nocompile.f.foreach_37_B;

void foo(){
	int[] x = new int[3];
	int e;

	foreach(i, e; x){
	}
}
