// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-11-08
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=489
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
