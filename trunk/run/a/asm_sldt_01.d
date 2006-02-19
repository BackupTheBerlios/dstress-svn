// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sldt_01;

int main(){
	version(D_InlineAsm){
		
		ushort u = 1;
		
		asm{
			sldt u;
		}
		
		assert(u == 0); // is this realy safe ?
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}