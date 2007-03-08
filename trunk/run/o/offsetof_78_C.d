// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2007-02-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=979
// @desc@	[Issue 979] offsetof for classes does not work

module dstress.run.o.offsetof_78_C;

class Foo{
	int x;

	static size_t test(){
		return x.offsetof;
	}
}

int main(){
	if(Foo.x.offsetof != Foo.test()){
		assert(0);
	}
	return 0;
}
