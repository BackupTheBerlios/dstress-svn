// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_frstor_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
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
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
