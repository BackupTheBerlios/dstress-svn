// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ -unittest

module dstress.run.unittest_06;

int status;

enum TestEnum{
	x=2,
	unittest{
		status++;
	}
}

int main(){
	assert(status==1);
	return 0;
}
