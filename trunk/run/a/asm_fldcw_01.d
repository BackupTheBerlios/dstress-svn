// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fldcw_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		ushort controll;

		float a = 2.8f;
		float b = 2.1f;

		short i1_a, i1_b;
		short i2_a, i2_b;
		short i3_a, i3_b;

		asm{
			finit;
			fstcw controll;
		}

		controll &= 0b1111_00_1111111111;
		controll |= 0b0000_01_0000000000;

		asm{
			fldcw controll;
			fld a;
			fistp i1_a;

			fld b;
			fistp i1_b;
		}

		if(i1_a != 2){
			assert(0);
		}
		if(i1_b != 2){
			assert(0);
		}

		controll &= 0b1111_00_1111111111;
		controll |= 0b0000_10_0000000000;

		asm{
			fldcw controll;
			fld a;
			fistp i2_a;

			fld b;
			fistp i2_b;
		}
		if(i2_a != 3){
			assert(0);
		}
		if(i2_b != 3){
			assert(0);
		}

		controll &= 0b1111_00_1111111111;

		asm{
			fldcw controll;
			fld a;
			fistp i3_a;

			fld b;
			fistp i3_b;
		}
		if(i3_a != 3){
			assert(0);
		}
		if(i3_b != 2){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
