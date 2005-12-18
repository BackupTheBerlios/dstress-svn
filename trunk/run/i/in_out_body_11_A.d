// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

module dstress.run.i.in_out_body_11_A;

int inBase;
int inDerived;
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
		inDerived++;
	}body{
		done++;
	}
}

int main(){
	Derived d = new Derived();

	d.test(1);

	assert(done);
	assert((inBase==1 && inDerived==0) || (inDerived==1 && inBase==0));

	return 0;
}
