// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.linde@gmail.com>
// @date@	2006-08-19
// @uri@	news:bug-296-3@http.d.puremagic.com/issues/
// @desc@	[Issue 296] New: Template constant can not be used as size of static array.

module dstress.compile.t.template_43_B;

template Count(){
	const int i = 5;
}

int[Count!().i] x; 

static assert(x.length != 5);
