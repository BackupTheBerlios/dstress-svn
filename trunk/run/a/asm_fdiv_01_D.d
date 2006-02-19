// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fdiv_01_D;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		double a = 12.0;
		double b = -3.0;
		double c;
		
		asm{
			fld a;
			fld b;
			fdiv ST(1),ST;
			fstp c;
			fstp c;
		}
		
		assert(c == -4.0);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}