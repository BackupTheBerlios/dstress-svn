// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.linde@gmail.com>
// @date@	2006-09-08
// @uri@	news:bug-334-3@http.d.puremagic.com/issues/
// @desc@	[Issue 334] New: Void Initializer ICE

module dstress.run.t.typedef_18_A;

typedef int MyInt = void;

int main(){
	MyInt[] a = new MyInt[10];

	if(a.length != 10){
		assert(0);
	}

	return 0;
}
