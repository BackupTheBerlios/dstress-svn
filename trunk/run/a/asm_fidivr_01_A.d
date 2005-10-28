// $HeadURL: svn://127.0.0.1/run/a/asm_fcos_01.d $
// $Date: 2005-10-04 11:25:00 +0200 (星期二, 04 十月 2005) $
// $Author: thomask $

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fidivr_01_A;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float a = -3.0;
		int b = 12;
		
		asm{
			fld a;
			fidivr b;
			fstp a;
		}
		
		assert(a == -4.0);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}