// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fistp_01_C;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		real r = -800.9L;
		long i;
		
		asm{
			fld r;
			fisttp i;
		}
		
		assert(i == -800);
		
		r = -800.0L;
		
		asm{
			fld r;
			fisttp i;
		}
		
		assert(i == -800);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}