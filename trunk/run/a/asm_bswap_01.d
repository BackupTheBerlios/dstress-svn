// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_bswp_01;

int main(){
	version(D_InlineAsm){
		uint a = 0xAB_34_56_78;
		
		asm{
			mov EAX, a;
			bswap EAX;
			mov a, EAX;
		}
		
		assert(a==0x78_56_34_AB);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}