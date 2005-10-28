// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fsincos_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float a = 2.2;
		float b = 2.2;
		
		asm{
			finit;
			fldz;
			fsincos;
			fstp a;
			fstp b;
		}
		
		a -= 1.0;
		a = (a>0) ? a : -a;
		assert(a < a.epsilon * 4);
		
		assert(b == 0.0);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}