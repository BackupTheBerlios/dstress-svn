// $HeadURL$
// $Date$
// $Author$

// Static constructors within a module are executed in the lexical order in which they appear.

module dstress.run.constructor_09;

bool init;
bool initA;
bool initB;

static this(){
	assert(!init);
	assert(!initA);
	assert(!initB);
	init=true;
}

class A{
	static this(){
		assert(init);
		assert(!initA);
		assert(!initB);
		initA=true;
	}
}

class B{
	static this(){
		assert(init);
		assert(initA);
		assert(!initB);
		initB=true;
	}
}

int main(){
	assert(init);
	assert(initA);
	assert(initB);
	return 0;
}
