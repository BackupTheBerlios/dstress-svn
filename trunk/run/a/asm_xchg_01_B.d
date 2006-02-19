// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xchg_01_B;

int main(){
	version(D_InlineAsm){
		ushort a = 1u;
		ushort b = 3u;
		
		asm{
			mov AX, a;
			xchg AX, b;
			mov a, AX;
		}
	
		assert(a==3u);
		assert(b==1u);
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}