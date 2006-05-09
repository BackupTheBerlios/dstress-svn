// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fpatan_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU!()();
		
		float a = 2.2;
		float b = -0.0;
		
		asm{
			finit;
			fld a;
			fld b;
			fpatan;
			fstp a;
			fldpi;
			fstp b;
		}
		
		a -= b/2;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}