// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fsave_01;
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
			fsave state;
		}
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}