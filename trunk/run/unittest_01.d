// __DSTRESS_DFLAGS__ -unittest

module dstress.run.unittest_01;

int status;

int main(){
	assert(status==1);
	return 0;
}

unittest{
	status++;
}
