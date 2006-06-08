// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_smsw_01_A;

int main(){
	version(D_InlineAsm){

		ushort a = 0;

		asm{
			smsw a;
		}

		assert(a != 0);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}