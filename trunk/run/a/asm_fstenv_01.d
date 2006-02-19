// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fstenv_01;

int main(){
	version(D_InlineAsm){
		byte[28] b;
		
		asm{
			fstenv b;
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}