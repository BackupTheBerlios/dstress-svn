// $HeadURL$
// $Date$
// $Author$

module dstress.run.delegate_04;

struct MyStruct{
	int test(){
		return 3;
	}
}

int main(){
	int delegate() dl;
	
	MyStruct s;
	dl = &s.test;
	assert(dl()==3);

	return 0;
}
