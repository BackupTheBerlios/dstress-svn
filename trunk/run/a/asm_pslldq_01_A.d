// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pslldq_01_A;

int main(){
	version(D_InlineAsm_X86){
		const ubyte[16] a = [0, 1, 2, 3, 4, 5, 6, 7, 8 ,9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF];
		ubyte[16] b;
		
		asm{
			movdqu XMM0, a;
			pslldq XMM0, 2;
			movdqu b, XMM0;
		}

		for(size_t i = 0; i < c.length-2; i++){
			if(b[i] != i+2){
				assert(0);
			}
		}

		if(b[b.length - 2] || b[b.length - 1]){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
