// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>

module /*dstress.*/addon.cpuinfo;

version(D_InlineAsm){
	void haveCMOV(){
		uint a = 0;
		asm{
			mov EAX, 1;
			cpuid;
			mov a, EDX;
		}
		assert((a >> 15) & 1);
	}
	
	void haveCX8(){
		uint a = 0;
		asm{
			mov EAX, 1;
			cpuid;
			mov a, EDX;
		}
		assert((a >> 8) & 1);
	}
	
	void haveFPU(){
		uint a = 0;
		
		asm{
			mov EAX, 1;
			cpuid;
			mov a, EDX;
		}
		
		assert(a & 1);
	}
		
	void haveMMX(){
		uint a = 0;
		
		asm{
			mov EAX, 1;
			cpuid;
			mov a, EDX;
		}
		
		assert((a >> 23) & 1);
	}

	
	void haveSSE(){
		uint a = 0;
		
		asm{
			mov EAX, 1;
			cpuid;
			mov a, EDX;
		}
		
		assert((a >> 25) & 1);
	}	

	void haveSSE2(){
		uint a = 0;
		
		asm{
			mov EAX, 1;
			cpuid;
			mov a, EDX;
		}
		
		assert((a >> 26) & 1);
	}
	
	void haveSSE3(){
		uint a = 0;
			
		asm{
			mov EAX, 1;
			cpuid;
			mov a, ECX;
		}
			
		assert(a & 1);
	}
}else{
	pragma(msg, "no Inline ASM support");
	static assert(0);
}