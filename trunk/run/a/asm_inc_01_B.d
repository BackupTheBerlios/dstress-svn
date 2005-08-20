// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_inc_01_B;

int main(){
	version(D_InlineAsm){
		uint i = 0x12_3F_FF_FFu;
		
		assert(i==0x12_3F_FF_FFu);
		
		asm{
			mov EAX, i;
			inc AX;
			mov i, EAX;
		}
	
		assert(i==0x12_3F_00_00u);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}