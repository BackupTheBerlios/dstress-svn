// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-11-08
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=489
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
