// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fst_01_A;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU!()();
		
		float a, b, c;
		
		asm{
			fldz;
			fldz;
			fld1;
			fst ST(1);
			fstp a;
			fstp b;
			fstp c;
		}
		
		assert(a == 1.0);
		assert(b == 1.0);
		assert(c == 0.0);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}