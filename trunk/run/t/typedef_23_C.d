// $HeadURL$
// $Date$
// $Author$

// @author@	davidl <david@126.com>
// @date@	2007-01-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=850
// @desc@	[Issue 850] we need (*type).property to refer to property if we use typedef

module dstress.run.t.typedef_23_C;

class C{
	int myMember;
}

typedef C* X;

void foo(X x){
	x.myMember = 0xDEAD_DEED;
}

int main(){
	C c = new C();
	foo(cast(X) &c);

	if(0xDEAD_DEED != c.myMember){
		assert(0);
	}

	return 0;
}
