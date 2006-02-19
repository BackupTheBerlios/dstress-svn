// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_por_01;

int main(){
	version(D_InlineAsm){
		ulong a = 0xFF01_00FF_0001_0000;
		ulong b = 0xFF00_10FF_0002_0000;
		ulong c = 2;
			
		asm{
			movq MM0, a;
			por MM0, b;
			movq c, MM0;
		}
		
		assert(c==0xFF01_10FF_0003_0000);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}