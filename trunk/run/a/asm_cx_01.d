// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cx_01;

int main(){
	version(D_InlineAsm){
		byte a = 0x12;
		byte b = 0x34;
		short s;
	
		assert(a==0x12);
		assert(b==0x34);
		assert(s==0x00_00);
	
		asm{
			mov CH, a;
			mov CL, b;
			mov s, CX;
		}
	
		assert(a==0x12);
		assert(b==0x34);
		assert(s==0x12_34);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}