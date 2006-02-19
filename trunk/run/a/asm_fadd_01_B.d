// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fadd_01_B;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		double a = -1.0f;
		double b = 3.5f;
		
		asm{
			finit;
			fld a;
			fadd b; 
			fst a;
		}
		
		assert(a > 0);
		
		a -= 2.5f;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon*4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}