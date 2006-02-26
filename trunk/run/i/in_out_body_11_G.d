// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.i.in_out_body_11_G;

int inDerived;
int inBase;
int done;

class Base{
	void test(int i)
	in{
		inBase++;
		assert(0);
	}body{
		assert(0);
	}
}

class Derived : Base{
	void test(int i)
	in{
		inDerived++;
		assert(0);
	}body{
		done++;
	}
}

int main(){
	Base b = new Derived();

	try{
		b.test(1);
	}catch(Exception e){
		assert(done == 0);
		assert(inBase == 1);
		assert(inDerived == 1);

		return 0;
	}
}
