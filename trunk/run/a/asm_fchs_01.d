// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fchs_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		real a = -1.2L;
		
		asm{
			finit;
			fld a;
			fchs;
			fstp a;
		}
		
		assert(a > 0);
		
		a -= 1.2L;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon*4);
		
		a = 1.2L;
		
		asm{
			finit;
			fld a;
			fchs;
			fstp a;
		}
		
		assert(a < 0);
		
		a += 1.2L;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon*4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}