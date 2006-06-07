// $HeadURL$
// $Date$
// $Author$

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
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		const bool haveX86InlineAsm = false;
	}
}else version(D_InlineAsm_X86){
	const bool haveX86InlineAsm = true;
	version = haveX86InlineAsm;
}else version(D_InlineAsm_X86_X64){
	const bool haveX86InlineAsm = true;
	version = haveX86InlineAsm;
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	const bool haveX86InlineAsm = false;
}

template have3DNow(){
	void have3DNow(){
		uint a = 0;

		version(haveX86InlineAsm){
			asm{
				mov EAX, 0x8000_0001;
				cpuid;
				mov a, EDX;
			}
		}else{
			pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		}

		if(!((a >> 30) & 1)){
			throw new Exception("DSTRESS{XFAIL}: no 3DNow! support present");
		}
	}
}

template haveCMOV(){
	void haveCMOV(){
		uint a = 0;

		version(haveX86InlineAsm){
			asm{
				mov EAX, 1;
				cpuid;
				mov a, EDX;
			}
		}else{
			pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		}

		if(!((a >> 15) & 1)){
			throw new Exception("DSTRESS{XFAIL}: no CMOV support present");
		}
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

template haveFPU(){
	void haveFPU(){
		uint a = 0;

		version(haveX86InlineAsm){
			asm{
				mov EAX, 1;
				cpuid;
				mov a, EDX;
			}
		}else{
			pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		}

		if(!(a & 1)){
			throw new Exception("DSTRESS{XFAIL}: no X86 FPU present");
		}
	}
}

template haveMMX(){
	void haveMMX(){
		uint a = 0;

		version(haveX86InlineAsm){
			asm{
				mov EAX, 1;
				cpuid;
				mov a, EDX;
			}
		}else{
			pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		}

		if(!((a >> 23) & 1)){
			throw new Exception("DSTRESS{XFAIL}: no MMX support present");
		}
	}
}

template haveSSE(){
	void haveSSE(){
		uint a = 0;

		version(haveX86InlineAsm){
			asm{
				mov EAX, 1;
				cpuid;
				mov a, EDX;
			}
		}else{
			pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		}

		if(!((a >> 25) & 1)){
			throw new Exception("DSTRESS{XFAIL}: no SSE support present");
		}
	}
}

template haveSSE2(){
	void haveSSE2(){
		uint a = 0;

		version(haveX86InlineAsm){
			asm{
				mov EAX, 1;
				cpuid;
				mov a, EDX;
			}
		}else{
			pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		}

		if(!((a >> 26) & 1)){
			throw new Exception("DSTRESS{XFAIL}: no SSE2 support present");
		}
	}
}

template haveSSE3(){
	void haveSSE3(){
		uint a = 1;
		uint b = 0;

		version(haveX86InlineAsm){
			asm{
				mov EAX, a;
				cpuid;
				mov b, ECX;
			}
		}else{
			pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		}

		if(!(a & 1)){
			throw new Exception("DSTRESS{XFAIL}: no SSE3 support present");
		}
	}
}

template aligned_new(T){
	T[] aligned_new(size_t len, size_t alignment){
		ubyte* ptr = new ubyte[len * T.sizeof + alignment];

		alignment *= 8;

		while((cast(size_t)ptr) % alignment){
			ptr++;
		}

		T[]data = (cast(T*) ptr)[0 .. len];
		data[] = T.init;

		return data;
	}
}
