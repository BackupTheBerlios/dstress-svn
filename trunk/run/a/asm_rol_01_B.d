// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rol_01_B;

int main(){
	version(D_InlineAsm){
		ushort a = 0b1111_1100_0000_1010;
			
		asm{
			rol a, 1;
		}

		assert(a == 0b1111_1000_0001_0101);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}