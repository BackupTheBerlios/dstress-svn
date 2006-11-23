// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-11-08
// @uri@	news:bug-489-3@http.d.puremagic.com/issues/
// @desc@	[Issue 489] New: .classinfo not working with fqn

module dstress.run.c.classinfo_01_E;

class C{
}

int main(){
	ClassInfo i = .C.classinfo;

	if(!i){
		assert(0);
	}

	return 0;
}
