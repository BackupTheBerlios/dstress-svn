// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant@gmail.com>	
// @date@	2006-09-20
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=297
// @desc@	[Issue 297] New: Shadowing declarations allowed in foreach type lists

// __DSTRESS_ELINE__ 18

module dstress.nocompile.f.foreach_37_C;

void foo(){
	int[] x = new int[3];
	int i;

	foreach(i, e; x){
	}
}
