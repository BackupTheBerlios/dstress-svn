// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pandn_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		ushort* a = [cast(ushort)
			0b01101100_01101110, 0b01101001_01101101, 0b01100011_01101011, 0b11100111_01100111,
			0b11000110_11100110, 0b10001101_10011011, 0b00011011_10011011, 0b01100110_00000000
		];
		ushort* b = [cast(ushort)
			0b10000000_11000000, 0b01000000_01100000, 0b00100000_00110000, 0b00010000_00011000,
			0b00001000_00001100, 0b00000100_00000110, 0b00000010_00000011, 0b11111111_10101010
		];
		ushort* c = new ushort[8];

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				pandn XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				pandn XMM0, XMM1;
				mov RAX, c;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != ((a[0] ^ 0xFFFF) & b[0])){
			assert(0);
		}
		if(c[1] != ((a[1] ^ 0xFFFF) & b[1])){
			assert(0);
		}
		if(c[2] != ((a[2] ^ 0xFFFF) & b[2])){
			assert(0);
		}
		if(c[3] != ((a[3] ^ 0xFFFF) & b[3])){
			assert(0);
		}
		if(c[4] != ((a[4] ^ 0xFFFF) & b[4])){
			assert(0);
		}
		if(c[5] != ((a[5] ^ 0xFFFF) & b[5])){
			assert(0);
		}
		if(c[6] != ((a[6] ^ 0xFFFF) & b[6])){
			assert(0);
		}
		if(c[7] != ((a[7] ^ 0xFFFF) & b[7])){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
