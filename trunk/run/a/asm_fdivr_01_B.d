// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fdivr_01_B;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float a = 12.0;
		float b = -3.0;
		
		asm{
			fldz;
			fld b;
			fdivr a;
			fstp a;
			fstp b;
		}
		
		assert(a == -4.0);
		assert(b == 0.0);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}