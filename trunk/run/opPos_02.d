// $HeadURL$
// $Date$
// $Author$

module dstress.run.opPos_02;

struct MyStruct{
	int status;
	void opPos(){
		status++;
	}
}

int main(){
	MyStruct s;
	assert(s.status==0);
	+s;
	assert(s.status==1);
	return 0;
}
