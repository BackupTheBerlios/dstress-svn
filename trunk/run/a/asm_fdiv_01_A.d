// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fdiv_01_A;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float a = 12.0;
		float b = -3.0;
		float c;
		
		asm{
			fld a;
			fdiv b;
			fstp c;
		}
		
		assert(c == -4.0);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}