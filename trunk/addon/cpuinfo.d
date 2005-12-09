// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>

module /*dstress.*/addon.cpuinfo;

version(D_InlineAsm){
	version(X86){
		const bool haveX86InlineAsm = true;
		version = haveX86InlineAsm;
	}else version(X86_64){
		const bool haveX86InlineAsm = true;
		version = haveX86InlineAsm;
	}else{
		pragma(msg, "no Inline ASM support");
		const bool haveX86InlineAsm = false;
	}
}else version(D_InlineAsm_X86){
	const bool haveX86InlineAsm = true;
	version = haveX86InlineAsm;
}else{
	pragma(msg, "no Inline ASM support");
	const bool haveX86InlineAsm = false;
}

void haveCMOV(){
	uint a = 0;

	version(haveX86InlineAsm){
		asm{
			mov EAX, 1;
			cpuid;
			mov a, EDX;
		}
	}

	if(!((a >> 15) & 1)){
		throw new Exception("no X86 CMOV support present");
	}
}
	
void haveCX8(){
	uint a = 0;

	version(haveX86InlineAsm){
		asm{
			mov EAX, 1;
			cpuid;
			mov a, EDX;
		}
	}

	if(!((a >> 8) & 1)){
		throw new Exception("no X86 CX8 support present");
	}
}

void haveFPU(){
	uint a = 0;
		
	version(haveX86InlineAsm){
		asm{
			mov EAX, 1;
			cpuid;
			mov a, EDX;
		}
	}
		
	if(!(a & 1)){
		throw new Exception("no X86 FPU present");
	}
}

void haveMMX(){
	uint a = 0;
		
	version(haveX86InlineAsm){
		asm{
			mov EAX, 1;
			cpuid;
			mov a, EDX;
		}
	}
		
	if(!((a >> 23) & 1)){
		throw new Exception("no X86 MMX support present");
	}
}

	
void haveSSE(){
	uint a = 0;
			
	version(haveX86InlineAsm){
		asm{
			mov EAX, 1;
			cpuid;
			mov a, EDX;
		}
	}

	if(!((a >> 25) & 1)){
		throw new Exception("no X86 SSE support present");
	}	
}

void haveSSE2(){
	uint a = 0;
		
	version(haveX86InlineAsm){
		asm{
			mov EAX, 1;
			cpuid;
			mov a, EDX;
		}
	}

	if(!((a >> 26) & 1)){
		throw new Exception("no X86 SSE2 support present");
	}
}
	
void haveSSE3(){
	uint a = 0;
			
	version(haveX86InlineAsm){
		asm{
			mov EAX, 1;
			cpuid;
			mov a, ECX;
		}
	}
	
	if(!(a & 1)){
		throw new Exception("no X86 SSE3 support present");
	}
}
