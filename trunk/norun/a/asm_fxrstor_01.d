// $HeadURL$
// $Date$
// $Author$

module dstress.norun.a.asm_fxrstor_01;

int main(){
	version(D_InlineAsm_X86){
		ubyte[] data;
		data.length = 512+1;

		if(!((cast(size_t)data.ptr) % 16)){
			data = data[1 .. $];
		}

		asm{
			fxrstor data;
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline x86 asm support");
		static assert(0);
	}
}
