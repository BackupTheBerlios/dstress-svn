// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_prefetchnta_01;

int main(){
	version(D_InlineAsm_X86){
		byte b;
		
		asm{
			prefetchnta b;
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
