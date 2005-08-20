// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cbw_01;

int main(){
	version(D_InlineAsm){
		uint i=0x12_3F_FF_FFu;
		byte b=-128;
		
		assert(i==0x12_3F_FF_FFu);
		
		asm{
			mov EAX, i;
			mov AL, b;
			cbw;
			mov i, EAX;
		}
	
		assert(i== 0x12_3F_FF_80u);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}