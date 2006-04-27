// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_prefetch2_01;

int main(){
	version(D_InlineAsm_X86){
		byte b;
		
		asm{
			prefetcht2 b;
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
