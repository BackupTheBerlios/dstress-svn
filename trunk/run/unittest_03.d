// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_DFLAGS__ -unittest

module dstress.run.unittest_03;

int status;

unittest{
	status++;
}

int main(){
	assert(status==1);
	return 0;
}

