// $HeadURL: svn://127.0.0.1/run/a/asm_fsqrt_01.d $
// $Date: 2005-10-04 11:25:00 +0200 (星期二, 04 十月 2005) $
// $Author: thomask $

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fst_01_B;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float a, b, c;
		
		asm{
			fldz;
			fld1;
			fst c;
			fstp a;
			fstp b;
		}
		
		assert(a == 1.0);
		assert(b == 0.0);
		assert(c == 1.0);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}