// $HeadURL$
// $Date$
// $Author$

// @author@	<regan@netwin.co.nz>
// @date@	2006-03-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=44

module dstress.run.u.union_16_F;

struct B {
        int b1;
        int b2;
}

struct A {
        int a;
	B b;
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
