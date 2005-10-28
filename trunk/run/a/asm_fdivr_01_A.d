// $HeadURL: svn://127.0.0.1/run/a/asm_fcos_01.d $
// $Date: 2005-10-04 11:25:00 +0200 (星期二, 04 十月 2005) $
// $Author: thomask $

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fdivr_01_A;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		double a = 12.0;
		double b = -3.0;
		
		asm{
			fldz;
			fld b;
			fdivr a;
			fstp a;
			fstp b;
		}
		
		assert(a == -4.0);
		assert(b == 0.0);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}