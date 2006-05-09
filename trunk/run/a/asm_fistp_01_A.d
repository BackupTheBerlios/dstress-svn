// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fistp_01_A;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU!()();
		
		real r = -80.0L;
		short a, b;
		
		asm{
			finit;
			fld1;
			fld r;
			fistp a;
			fistp b;
		}
		
		assert(a == -80);
		assert(b == 1);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}