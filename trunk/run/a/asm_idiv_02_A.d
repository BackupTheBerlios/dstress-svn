// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_neg_02_A;

int main(){
	version(D_InlineAsm){
		byte y = 2;
				
		asm{
			lock;
			neg y;
		}

		assert(y == -2);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}