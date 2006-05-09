// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fmulp_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU!()();
		
		float a = 2.0;
		float b = -3.0;
		
		asm{
			finit;
			fld a;
			fld b;
			fmulp;
			fstp a;
		}
		
		a -= -6.0;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}