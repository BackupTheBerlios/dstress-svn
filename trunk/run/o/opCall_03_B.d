// $HeadURL$
// $Date$
// $Author$

// @author@	Boris Kolar <boris.kolar@globera.com>
// @date@	2006-12-29
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=766
// @desc@	[Issue 766] dmd.exe crash

module dstress.run.o.opCall_03_B;

struct Foo{
	static Foo opCall() {
		return Foo.init;
	}
	
	char[] a;
	bool b = true;
}

int main(){
	Foo f = Foo();
	if(f.a.length != 0){
		assert(0);
	}
	if(!f.b){
		assert(0);
	}
	return 0;	
}
