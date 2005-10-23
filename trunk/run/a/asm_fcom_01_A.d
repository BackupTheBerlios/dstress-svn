// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_adc_01_A.d $
// $Date: 2005-08-24 00:23:55 +0200 (Wed, 24 Aug 2005) $
// $Author: thomask $

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fcom_01_A;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float f1, f2;
		ushort s;
				
		asm{
			fldz;
			fldz;
			fld1;
			fldz;
			fcom;
			fstsw s;
			fstp f1;
			fstp f2;
		}

		assert(f1 == 0.0);
		assert(f2 == 1.0);
		
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
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}