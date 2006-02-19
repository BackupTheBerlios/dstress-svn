// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fisub_01_B;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float a = 2.4;
		short b = 19;
		
		asm{
			fld a;
			fisub b;
			fstp a;
		}
		
		assert(a<0);
		
		a += 16.6;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}