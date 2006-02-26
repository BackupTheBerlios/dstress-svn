// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.i.in_out_body_11_E;

int inBase;
int done;

class Base{
	void test(int i)
	in{
		inBase++;
	}body{
		assert(0);
	}
}

class Derived : Base{
	void test(int i)
	in{
		assert(0);
	}body{
		done++;
	}
}

int main(){
	Derived d = new Derived();

	d.test(1);

	assert(done);
	assert(inBase == 1);

	return 0;
}
