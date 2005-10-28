// $HeadURL: svn://127.0.0.1/run/a/asm_frndint_01.d $
// $Date: 2005-10-04 11:25:00 +0200 (星期二, 04 十月 2005) $
// $Author: thomask $

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_frstor_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		static if(size_t.sizeof==4 || size_t.sizeof==6){
			const ubyte stateSize = 108;
		}else static if(size_t.sizeof==2){
			const ubyte stateSize = 94;
		}else{
			static assert(0);
		}
		
		ubyte[stateSize] state;
		
		asm{
			frstor state;
		}
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}