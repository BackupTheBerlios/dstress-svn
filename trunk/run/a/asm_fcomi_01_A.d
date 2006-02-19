// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fcomi_01_A;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float f1, f2;
		
		ubyte CF = 2;
		ubyte PF = 2;
		ubyte ZF = 2;
				
		asm{
			fldz;
			fldz;
			fld1;
			fldz;
			fcomi;
			fstp f1;
			fstp f2;
			setc CF;
			setp PF;
			setz ZF;
		}

		assert(f1 == 0.0);
		assert(f2 == 1.0);
		
		assert(CF==1);
		assert(PF==0);
		assert(ZF==0);
		
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}