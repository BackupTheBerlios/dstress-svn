// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cwd_01;

int main(){
	version(D_InlineAsm){
		uint i=0x12_3F_FF_FFu;
		uint ii;
		short s=-128;
		
		asm{
			mov EAX, i;
			mov EDX, i;
			mov AX, s;
			cwd;
			mov i, EAX;
			mov ii, EDX;
		}
	
		assert(i==0x12_3F_FF_80u);
		assert(ii==0x12_3F_FF_FFu);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}