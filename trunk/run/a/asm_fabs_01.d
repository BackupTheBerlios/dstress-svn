// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fabs_01;
import addon.cpuinfo;
		
int main(){
	version(D_InlineAsm){	
		haveFPU();
	
		float f = -1.0f;
		
		asm{
			finit;
			fld f;
			fabs;
			fst f;
		}
		
		assert(f == 1.0);
		
		f = 2.0;
		
		asm{
			finit;
			fld f;
			fabs;
			fst f;
		}
		
		assert(f == 2.0);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}