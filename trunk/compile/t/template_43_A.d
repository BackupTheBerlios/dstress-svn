// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.linde@gmail.com>
// @date@	2006-08-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=296
// @desc@	[Issue 296] New: Template constant can not be used as size of static array.

module dstress.compile.t.template_43_A;

template Count(){
	const int Count = 5;
}

int[Count!()] x; 

static assert(x.length != 5);
