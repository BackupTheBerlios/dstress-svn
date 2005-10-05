// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movnti_01;

int main(){
	version(D_InlineAsm){
		
		uint a = 0x1234_ABCD;
		uint b = 2;
		
		asm{
			mov EAX, a;
			movnti b, EAX;
		}
		
		assert(a==b);
		assert(b==0x1234_ABCD);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}