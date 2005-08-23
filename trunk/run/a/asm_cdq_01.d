// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cdq_01;

import std.stdio;

int main(){
	version(D_InlineAsm){
		int x = -128;
		uint i=0x12_3F_FF_FFu;
		uint ii;
		
		asm{
			mov EAX, x;
			mov EDX, i;
			cdq;
			mov i, EAX;
			mov ii, EDX;
		}
	
		assert(i==0xFF_FF_FF_80u);
		assert(ii==0xFF_FF_FF_FFu);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}