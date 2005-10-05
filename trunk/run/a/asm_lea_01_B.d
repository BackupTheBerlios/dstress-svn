// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lea_01_B;

int main(){
	version(D_InlineAsm){
		ushort i;
		
		asm{
			lea AX, i;
			mov i, AX;
		}
		
		assert(cast(ushort)&i == i);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}