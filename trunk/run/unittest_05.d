// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ -unittest

module dstress.run.unittest_05;

int status;

union E{
	int i;	
	unittest{
		status++;
	}
}

int main(){
	assert(status==1);
	return 0;
}
