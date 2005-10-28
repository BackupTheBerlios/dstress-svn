// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fldpi_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		double f = -800.9;
		
		asm{
			fldpi;
			fstp f;
		}
		
		f -= 0x1.921FB54442D1846Ap+1;
		
		f = (f>0) ? f : -f;
		
		assert(f < f.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}