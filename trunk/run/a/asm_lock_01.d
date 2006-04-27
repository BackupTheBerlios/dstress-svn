// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lock_01;

int main(){
	version(D_InlineAsm_X86){
		uint i = 0;
		asm{
			lock;
			inc i;
		}

		if(i != 1){
			assert(0);
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
