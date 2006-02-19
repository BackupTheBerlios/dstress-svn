// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_stc_01;

int main(){
	version(D_InlineAsm){
		
		ubyte a, b = 3;
		
		asm{
			clc;
			setc a;
			stc;
			setc b;
		}
		
		assert(a == 0);
		assert(b == 1);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}