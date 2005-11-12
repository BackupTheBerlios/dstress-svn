// $HeadURL$
// $Date$
// $Author$

// unittests inside of structs allowed since dmd-0.118

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_DFLAGS__ -unittest

module dstress.run.unittest_04;

bool tested;

struct MyStruct{
	unittest{
		assert(!tested);
		tested=true;
	}
}

int main(){
	assert(tested);
	return 0;
}
