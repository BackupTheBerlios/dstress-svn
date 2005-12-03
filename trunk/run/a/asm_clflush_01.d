// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_cl_01.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_clflush_01;

int main(){
	version(D_InlineAsm){
		uint a;
		ubyte b = 1;
		
		asm{
			mov EAX, 1;
			cpuid;
			mov EAX, EDX;
			mov EBX, 0x2000;
			and EAX, EBX;
			cmp EAX, EBX;
			jne not_supported;
			clflush b;
			inc EAX;
		not_supported:
			mov a, 1;
		}
	
		assert(a==0x20001 || a==1);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
