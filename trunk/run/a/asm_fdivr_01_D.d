// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fdivr_01_D;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float a = 12.0;
		float b = -3.0;
		float c = 9.9;
		
		asm{
			fld b;
			fldz;
			fld a;
			fdivr ST(2),ST;
			fstp a;
			fstp b;
			fstp c;
		}
		
		assert(a == 12.0);
		assert(b == 0.0);
		assert(c == -4.0);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}