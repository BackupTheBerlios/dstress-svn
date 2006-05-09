// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fmul_01_B;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU!()();
		
		float a = 2.0;
		float b = -3.0;
		
		asm{
			finit;
			fld a;
			fmul b;
			fst b;
		}
		
		b -= -6.0;
		
		b = (b>0) ? b : -b;
		
		assert(b < b.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}