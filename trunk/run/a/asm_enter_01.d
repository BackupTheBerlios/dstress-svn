// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_enter_01;

int main(){
	version(D_InlineAsm){
		asm{
			enter 2048, 30;
			leave;
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}