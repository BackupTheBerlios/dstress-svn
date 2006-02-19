// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fstcw_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		ushort b;
		
		asm{
			finit;
			fstcw b;
		}
		
		assert(b == 0x037F);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}