// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fld1_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU!()();
		
		float f = -800.9;
		
		asm{
			fld1;
			fstp f;
		}
		
		assert(f == 1.0);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}