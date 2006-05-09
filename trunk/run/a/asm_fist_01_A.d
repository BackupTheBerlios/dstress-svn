// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fist_01_A;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU!()();
		
		real r = -800.0L;
		short i;
		
		asm{
			finit;
			fld r;
			fist i;
		}
		
		assert(i == -800);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}