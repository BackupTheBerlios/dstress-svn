// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fdecstp_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		ushort a, b;
		
		asm{
			finit;
			fstsw a;
			fdecstp;
			fstsw b;
		}
		
		a = (a >> 11) & 0b111;
		b = (b >> 11) & 0b111;
		
		assert(a == 0);
		assert(b == 7);
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}