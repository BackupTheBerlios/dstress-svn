module dtress.run.align_06;

struct SmallStruct{
	align(1) byte a;
	align(1) byte b;
}

struct BigStruct{
	align(4) byte e;
	align(4) byte f;
}

int main(){
	SmallStruct s;
	BigStruct S;
	assert(&s.b-&s.a==1);
	assert(&S.f-&S.e==4);
	
	return 0;
}
