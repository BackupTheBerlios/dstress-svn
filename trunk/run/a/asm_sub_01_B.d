// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sub_01_B;

int main(){
	version(D_InlineAsm){
		uint i = 0x12_3F_00_00u;

		assert(i==0x12_3F_00_00u);

		asm{
			mov EAX, i;
			sub AX, 1;
			mov i, EAX;
		}

		assert(i==0x12_3F_FF_FFu);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}