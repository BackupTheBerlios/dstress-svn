// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_frndint_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU!()();
		
		float a = 4.6;
		
		asm{
			finit;
			fld a;
			frndint;
			fstp a;
		}
				
		a -= 5.0;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}