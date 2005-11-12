// $HeadURL$
// $Date$
// $Author$

// Unit tests are run in the lexical order in which they appear
// within a module

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_DFLAGS__ -unittest

module dstress.run.unittest_08;

int status;
int mixinCount;

static this(){
	assert(status==0);
	status++;
}

unittest{
	assert(status==1);
	status++;
}

template Templ(T){
	int dummy;
	unittest{
		assert(status==3+(mixinCount++));
		status++;
	}
}

class MyClass{
	unittest{
		assert(status==2);
		status++;
	}

	mixin Templ!(int);	
}

mixin Templ!(int);

mixin Templ!(void);

int main(){
	assert(status==6);
	return 0;
}
