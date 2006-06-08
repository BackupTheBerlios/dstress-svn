// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cx_02;

int main(){
	version(D_InlineAsm){
		byte a = 0;
		byte b = 0;
		short s=0x12_34;

		assert(a==0);
		assert(b==0);
		assert(s==0x12_34);

		asm{
			mov CX, s;
			mov a, CH;
			mov b, CL;
		}

		assert(s==0x12_34);
		assert(a==0x12);
		assert(b==0x34);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}