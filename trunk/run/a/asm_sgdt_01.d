// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sgdt_01;

int main(){
	version(D_InlineAsm){

		long u = 0;

		asm{
			sgdt u;
		}

		assert(u!=0);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}