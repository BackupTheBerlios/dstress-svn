// $HeadURL$
// $Date$
// $Author$

module dstress.run.unittest_03;

int status;

unittest{
	status++;
}

int main(){
	assert(status==1);
	return 0;
}

