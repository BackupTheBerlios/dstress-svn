// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.linde@gmail.com>
// @date@	2006-09-08
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=334
// @desc@	[Issue 334] New: Void Initializer ICE

module dstress.run.t.typedef_18_B;

typedef int MyInt = void;
MyInt[10] a;

int main(){
	if(a.length != 10){
		assert(0);
	}

	return 0;
}
