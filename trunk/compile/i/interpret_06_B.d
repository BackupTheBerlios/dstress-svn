// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2007-04-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1177
// @desc@	[Issue 1177] $ no longer works inside CTFE functions.

module dstress.compile.i.interpret_06_B;

bool b(char[] a){
	return (a[a.length-1]=='b');
}

static assert(!b("abc"));
static assert(b("b"));
