// $HeadURL$
// $Date$
// $Author$

// Unit tests are run in the lexical order in which they appear
// within a module

// __DSTRESS_DFLAGS__ -unittest

module dstress.run.unittest_08;

int status;

static this(){
	assert(status==0);
	status=1;
}

unittest{
	assert(status==1);
	status==2;
}

template Templ(T){
	int dummy;
	unittest{
		assert(status==2);
		status==3;
	}
}

class MyClass{
	unittest{
		assert(status==3);
		status==4;
	}

	mixin Templ!(int);	
}

int main(){
	assert(status==4);
	return 0;
}
