// $HeadURL$
// $Date$
// $Author$

// @author@	<vlasov@scatt.com>
// @date@	2007-03-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1058
// @desc@	[Issue 1058] DMD hangs with 100% CPU - member function returning forward-referenced struct before constructor

module dstress.run.f.forward_reference_19_C;

class A{
	B x;

	this(){
	}

	B b(){
		return x;
	}
}

struct B{
	int dummy;
}

int main(){
	A a = new A();
	B b;
	b.dummy = 0x12EF34AB;
	a.x = b;
	if(0x12EF34AB != a.b().dummy){
		assert(0);
	}

	return 0;
}
