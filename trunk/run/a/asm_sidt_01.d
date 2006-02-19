// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sidt_01;

int main(){
	version(D_InlineAsm){
		
		ulong u = 0;
		
		asm{
			sidt u;
		}
		
		assert(u != 0);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}