// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fninit_01;

int main(){
	version(D_InlineAsm){
		asm{
			fninit;
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}