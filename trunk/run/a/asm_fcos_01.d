// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fcos_01;

int main(){
	version(D_InlineAsm){
		real a = -0.0L;
		
		asm{
			finit;
			fld a;
			fcos;
			fstp a;
		}
		
		assert(a == 1.0L);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}