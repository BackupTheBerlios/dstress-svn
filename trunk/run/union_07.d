// $HeadURL$
// $Date$
// $Author$

module dstress.run.union_07;

union MyUnion{
	short s;
	byte b;
}

int main(){
	MyUnion u;
	u.b=0x12;
	version(LittleEndian){
		assert(u.s==0x0012);
	}else{
		assert(u.s==0x1200);
	}
	return 0;
}
