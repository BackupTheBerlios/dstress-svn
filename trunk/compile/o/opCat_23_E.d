// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-09-16
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=352
// @desc@	[Issue 352] New: Assertion failure: expression.c 753 - concatenating strings in a template calling another template
 
module dstress.compile.o.opCat_23_E;

template A(char[] x){
	const char[] A = x;
}

template B(char[] y){
	const char[] B = A!(y);
}

const char[] s = B!("");

static assert(s.length == 0);

