// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fnop_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		asm{
			fnop;
		}
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}