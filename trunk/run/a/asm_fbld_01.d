// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fbld_01;
import addon.cpuinfo;
		
int main(){
	version(D_InlineAsm){	
		haveFPU();
	
		byte[10] raw;
		
		raw[0] = 1 | (2 << 4);
		raw[1] = 3 | (4 << 4);
		raw[2] = 5 | (6 << 4);
		raw[3] = 0;
		raw[4] = 0;
		raw[5] = 0;
		raw[6] = 0;
		raw[7] = 0;
		raw[8] = 0;
		raw[9] = 0;
		
		real r = 17;
		
		asm{
			fbld raw;
			fstp r;
		}
		
		r -= 654321.0;
		
		r = (r<0) ? (-r) : r;
		
		assert(r < r.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}