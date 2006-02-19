// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fdivrp_01_A;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float a = 12.0;
		float b = -3.0;
		
		asm{
			fld b;
			fldz;
			fld a;
			fdivrp ST(2),ST;
			fstp a;
			fstp b;
		}
		
		assert(a == 0.0);
		assert(b == -4.0);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}