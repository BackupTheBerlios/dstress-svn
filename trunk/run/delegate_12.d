// $HeaderURL$
// $Date$
// $Author$

module dstress.run.delegate_12;

union MyUnion{
	int test(){
		return b;
	}
	byte b;
}

int main(){
	int delegate() dl;
	
	MyUnion u;
	u.b = 3;
	dl = &u.test;
	assert(dl()==3);

	return 0;
}
