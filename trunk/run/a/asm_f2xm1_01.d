// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_f2xm1_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		float f = -1.0f;
		
		asm{
			finit;
			fld f;
			f2xm1;
			fst f;
		}
		
		assert(f<0);

		f += 0.5f;
		
		f = (f>0) ? f : -f;
		
		assert(f < f.epsilon * 4);
		
		f = 1.0;
		
		asm{
			finit;
			fld f;
			f2xm1;
			fst f;
		}
		
		assert(f>0);

		f -= 1.0f;
		
		f = (f>0) ? f : -f;
		
		assert(f < f.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}