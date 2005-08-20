// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_inc_01_A;

int main(){
	version(D_InlineAsm){
		uint i = 0x12_34_5F_FFu;
		
		assert(i==0x12_34_5F_FFu);
		
		asm{
			mov EAX, i;
			inc AL;
			mov i, EAX;
		}
	
		assert(i==0x12_34_5F_00u);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}