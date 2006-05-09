 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_bt_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		ushort a = 0x00_01;
		ushort b = 0x00_00;

		asm{
			mov AX, a;
			mov BX, b;
			bt  AX, BX;
			jnc error;
			mov BX, AX;
			bt  AX, BX;
			jc error;
		}
		
		return 0;
	error:
		assert(0);
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
