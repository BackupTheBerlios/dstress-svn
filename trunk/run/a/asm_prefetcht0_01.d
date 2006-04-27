// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_prefetcht0_01;

int main(){
	version(D_InlineAsm_X86){
		byte b;
		
		asm{
			prefetcht0 b;
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
