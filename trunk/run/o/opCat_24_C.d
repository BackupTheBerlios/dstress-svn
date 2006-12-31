// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <h3r3tic@mat.uni.torun.pl>
// @date@	2006-09-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=381
// @desc@	[Issue 381] New: array literals are broken; Internal error: ..\ztc\cod1.c 2525

// __DSTRESS_WARNING__ direct access to Phobos's stdarg

module dstress.run.o.opCat_24_C;
import std.stdarg;

void foo(...) {
	if(_arguments.length != 1){
		assert(0);
	}

	int[] x  = va_arg!(int[])(_argptr);
	if(x.length != 2){
		assert(0);
	}
	if(x[0] != 1 || x[1] != 2){
		assert(0);
	}
}

int main(){
	const int[] a = [1, 2];
	foo([1] ~ 2);

	return 0;
}

