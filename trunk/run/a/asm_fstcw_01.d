// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fstcw_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		ushort b;
		
		asm{
			finit;
			fstcw b;
		}
		
		assert(b == 0x037F);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}