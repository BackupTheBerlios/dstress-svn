// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-09-16
// @uri@	news:bug-352-3@http.d.puremagic.com/issues/
// @desc@	[Issue 352] New: Assertion failure: expression.c 753 - concatenating strings in a template calling another template
 
module dstress.compile.o.opCat_23_C;

template A(char[] x){
	const char[] A = x;
}

template B(char[] y){
	const char[] B = A!("dog" ~ y);
}

const char[] s = B!(null);

static assert(s == "dog");

