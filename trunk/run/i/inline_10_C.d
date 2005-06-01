// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <vathix@dprogramming.com>
// @date@	2005-05-22
// @uri@	news:op.sq4gt8ddkcck4r@esi
// @desc@	-inline calling wrong virtual function

// __DSTRESS_DFLAGS__ -inline

module dstress.run.i.inline_10_C;

class Base{
	int test(){
		return 1;
	}
}

class Derived : Base{
	int test(){
		return 2;
	}

	int baseTest(){
		return super.test();
	}
}

int main(){
	Base b = new Base();
	assert(b.test()==1);

	Derived f = new Derived();
	assert(f.test()==2);
	assert(f.baseTest()==1);
	return 0;
}
