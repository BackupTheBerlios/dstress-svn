// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fsub_01_A;

int main(){
	version(D_InlineAsm){
		float a = 2.4f;
		float b = -1.2;
		
		asm{
			fld a;
			fsub b;
			fst a;
		}
		
		assert(a>0);
		
		a -= 3.6f;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}