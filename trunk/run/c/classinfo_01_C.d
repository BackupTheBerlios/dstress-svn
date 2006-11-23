// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-11-08
// @uri@	news:bug-489-3@http.d.puremagic.com/issues/
// @desc@	[Issue 489] New: .classinfo not working with fqn

module dstress.run.c.classinfo_01_C;

class C{
}

int main(){
	C c = new C();
	ClassInfo i = c.classinfo;

	if(!i){
		assert(0);
	}

	return 0;
}
