align(1) struct SmallStruct{
	align(1) byte a;
	align(1) byte b;
}

align(4) struct MidStruct{
	align(4) byte c;
	align(4) byte d;
}

align(64) struct BigStruct{
	align(64) byte e;
	align(64) byte f;
}

int main(){
	assert(SmallStruct.sizeof < MidStruct.sizeof);
	assert(MidStruct.sizeof < BigStruct.sizeof);
	
	return 0;
}
