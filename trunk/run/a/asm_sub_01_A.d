// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sub_01_A;

int main(){
	version(D_InlineAsm){
		uint i = 0x12_34_5F_00u;
		
		assert(i==0x12_34_5F_00u);
		
		asm{
			mov EAX, i;
			sub AL, 1;
			mov i, EAX;
		}
	
		assert(i==0x12_34_5F_FFu);	
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}