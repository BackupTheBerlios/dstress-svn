
struct MyStruct{
	int status;
	void opNeg(){
		status+=3;
	}
}

int main(){
	MyStruct s;
	assert(s.status==0);
	-s;
	assert(s.status==3);
	-s;
	assert(s.status==6);
	return 0;
}
