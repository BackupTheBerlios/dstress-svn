// $HeadURL$
// $Date$
// $Author$

module dstress.run.invariant_28;

int status;
int inv;

class MyClass{

	this(){
	}

	public static void check(){
		status++;
	}

	invariant{
		check();
		inv++;
	}
}

int main(){

	MyClass o;
	assert(status==0);
	assert(inv==0);

	o=new MyClass();
	assert(status==1);
	assert(inv==1);

	o.check();
	assert(status==2);
	assert(inv==1);

	MyClass.check();
	assert(status==3);
	assert(inv==1);

	return 0;
}
