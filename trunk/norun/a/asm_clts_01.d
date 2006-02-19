// $HeadURL$
// $Date$
// $Author$

module dstress.norun.a.asm_clts_01;

int main(){
	version(D_InlineAsm){
		asm{
			clts;
		}
	
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}