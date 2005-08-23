// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_neg_02_B;

int main(){
	version(D_InlineAsm){
		short y = -1234;
				
		asm{
			lock;
			neg y;
		}

		assert(y == 1234);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}