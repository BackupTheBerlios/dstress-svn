// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lfence_01;

int main(){
	version(D_InlineAsm){
		
		asm{
			lfence;
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}