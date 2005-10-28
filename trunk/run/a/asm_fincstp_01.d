// $HeadURL: svn://127.0.0.1/run/a/asm_fcos_01.d $
// $Date: 2005-10-04 11:25:00 +0200 (星期二, 04 十月 2005) $
// $Author: thomask $

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fincstp_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU();
		
		ushort a, b;
		
		asm{
			finit;
			fstsw a;
			fincstp;
			fstsw b;
		}
		
		a = (a >> 11) & 0b111;
		b = (b >> 11) & 0b111;
		
		assert(a == 0);
		assert(b == 1);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}