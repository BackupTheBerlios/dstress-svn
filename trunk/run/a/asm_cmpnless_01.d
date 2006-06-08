// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpnless_01;

int main(){
	version(D_InlineAsm){
		float a = 1.2;
		float b = 1.2;
		uint res;

		asm{
			movd XMM0, a;
			cmpss XMM0, b, 6;
			movd res, XMM0;
		}

		assert(res == 0);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}