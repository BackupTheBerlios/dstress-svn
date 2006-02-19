// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fcomp_01_C;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float f1, f2;
		f1 = 1.0;
		
		ushort s;
				
		asm{
			fldz;
			fld1;
			fldz;
			fcomp f1;
			fstsw s;
			fstp f1;
			fstp f2;
		}

		assert(f1 == 1.0);
		assert(f2 == 0.0);

		ushort C0 = 1 << 8;
		ushort C1 = 1 << 9;
		ushort C2 = 1 << 10;
		ushort C3 = 1 << 14;
		
		assert(s & C0);
		assert(!(s & C1));
		assert(!(s & C2));
		assert(!(s & C3));
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}