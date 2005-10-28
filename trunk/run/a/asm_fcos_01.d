// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fcos_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
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
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}