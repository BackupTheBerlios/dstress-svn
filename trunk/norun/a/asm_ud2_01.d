// $HeadURL$
// $Date$
// $Author$

module dstress.norun.a.asm_ud2_01;

int main(){
	version(D_InlineAsm){
		asm{
			ud2;
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}