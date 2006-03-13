// $HeadURL$
// $Date$
// $Author$

// @author@	<regan@netwin.co.nz>
// @date@	2006-03-12
// @uri@	news:bug-44-3@http.d.puremagic.com/bugzilla/

module dstress.run.u.union_16_H;

struct A {
        int a;
	union {
		int c;
		B b;
	}
}

struct B {
        int b1;
        int b2;
}

int main(){
	if(A.sizeof != int.sizeof * 3){
		assert(0);
	}
	
	A a;
	
	if(a.sizeof != int.sizeof * 3){
		assert(0);
	}
	

	return 0;
}
