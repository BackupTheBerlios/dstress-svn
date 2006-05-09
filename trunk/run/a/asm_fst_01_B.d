// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fst_01_B;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU!()();
		
		float a, b, c;
		
		asm{
			fldz;
			fld1;
			fst c;
			fstp a;
			fstp b;
		}
		
		assert(a == 1.0);
		assert(b == 0.0);
		assert(c == 1.0);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}