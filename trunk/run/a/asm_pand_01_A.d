// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pand_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE2!()();

		static ushort[8] A = [
			0b01101100_01101110, 0b01101001_01101101, 0b01100011_01101011, 0b11100111_01100111,
			0b11000110_11100110, 0b10001101_10011011, 0b00011011_10011011, 0b01100110_00000000
		];
		static ushort[8] B = [
			0b10000000_11000000, 0b01000000_01100000, 0b00100000_00110000, 0b00010000_00011000,
			0b00001000_00001100, 0b00000100_00000110, 0b00000010_00000011, 0b11111111_10101010
		];
		ushort[8] c;
				
		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			pand XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != (A[0] & B[0])){
			assert(0);
		}
		if(c[1] != (A[1] & B[1])){
			assert(0);
		}
		if(c[2] != (A[2] & B[2])){
			assert(0);
		}
		if(c[3] != (A[3] & B[3])){
			assert(0);
		}
		if(c[4] != (A[4] & B[4])){
			assert(0);
		}
		if(c[5] != (A[5] & B[5])){
			assert(0);
		}
		if(c[6] != (A[6] & B[6])){
			assert(0);
		}
		if(c[7] != (A[7] & B[7])){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
