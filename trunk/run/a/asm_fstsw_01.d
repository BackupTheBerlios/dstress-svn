// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fstsw_01;

int main(){
	version(D_InlineAsm){
		short s;
		
		asm{
			fstsw s;
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}