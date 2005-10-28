// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fild_01_B;
import addon.cpuinfo;


int main(){
	version(D_InlineAsm){
		haveFPU();
		
		int i = 800;
		real r;
		
		asm{
			finit;
			fild i;
			fstp r;
		}
		
		assert(r == 800.0L);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}