// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_di_01;

int main(){
	version(D_InlineAsm){
		short a=0x12_34;
		short b;

		assert(a==0x12_34);
		assert(b==0);

		asm{
			mov DI, a;
			mov b, DI;
		}

		assert(a==0x12_34);
		assert(b==0x12_34);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}