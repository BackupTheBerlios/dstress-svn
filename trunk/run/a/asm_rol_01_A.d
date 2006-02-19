// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rol_01_A;

int main(){
	version(D_InlineAsm){
		ubyte a = 0b1111_1100;
			
		asm{
			rol a, 1;
		}

		assert(a == 0b1111_1001);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}