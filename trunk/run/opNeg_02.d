// $HeadURL$
// $Date$
// $Author$

module dstress.run.opNeg_02;

struct MyStruct{
	int status;
	void opNeg(){
		status++;
	}
}

int main(){
	MyStruct s;
	assert(s.status==0);
	-s;
	assert(s.status==1);
	return 0;
}
