// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_str_01;

int main(){
	version(D_InlineAsm){

		ushort a = 0;

		asm{
			str a;
		}

		assert(a != 0);

		return 0;
	}else{
		pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
		static assert(0);
	}
}