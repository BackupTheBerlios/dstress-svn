// $HeadURL$
// $Date$
// $Author$

module dstress.run.union_06;

union MyUnion{
	short s;
	byte b;
}

int main(){
	MyUnion u;
	u.s=0x1234;
	version(LittleEndian){
		assert(u.b==0x34);
	}else{
		assert(u.b==0x12);
	}
	return 0;
}
