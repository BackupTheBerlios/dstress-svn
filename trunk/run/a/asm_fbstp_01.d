// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fbstp_01;
import addon.cpuinfo;
		
int main(){
	version(D_InlineAsm){	
		haveFPU();
	
		byte[10] raw;
		
		real r = 654321.0L;
		
		asm{
			fld r;
			fbstp raw;
		}
		
		assert(raw[0] == 1 | (2 << 4));
		assert(raw[1] == 3 | (4 << 4));
		assert(raw[2] == 5 | (6 << 4));
		assert(raw[3] == 0);
		assert(raw[4] == 0);
		assert(raw[5] == 0);
		assert(raw[6] == 0);
		assert(raw[7] == 0);
		assert(raw[8] == 0);
		assert(raw[9] == 0);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}