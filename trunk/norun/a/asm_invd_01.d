// $HeadURL$
// $Date$
// $Author$

module dstress.norun.a.asm_invd_01;

int main(){
	version(D_InlineAsm){
		asm{
			invd;
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}