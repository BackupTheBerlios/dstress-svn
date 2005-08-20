// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_eax_02;

int main(){
	version(D_InlineAsm){
		int i=0x12_34_56_78;
		short s=0;
	
		assert(i==0x12_34_56_78);
		assert(s==0);
	
		asm{
			mov EAX, i;
			mov s, AX;
		}
	
		assert(i==0x12_34_56_78);
		assert(s==0x56_78);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}