// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_finit_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU!()();
		ushort controll, status;
		
		asm{
			finit;
			fstcw controll;
			fstsw status;
		}
		
		assert(controll == 0x037F);
		assert(status == 0);
		
		return 0;
	}else{
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}