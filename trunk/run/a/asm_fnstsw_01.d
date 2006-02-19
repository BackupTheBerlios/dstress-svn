// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fnstsw_01;

int main(){
	version(D_InlineAsm){
		short s;
		
		asm{
			fnstsw s;
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}