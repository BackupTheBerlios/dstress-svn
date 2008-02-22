// $HeadURL$
// $Date$
// $Author$

// @author@	<burton-radons@shaw.ca>
// @date@	2007-02-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1829
// @desc@	[Issue 1829] New: Inline assembler cannot get label addresses

module dstress.run.a.asm_lea_03_A;

version(D_InlineAsm_X86){
	void test(){
        	asm{
			lea EAX, test;
	        }
	}
}else version(D_InlineAsm_X86_64){
	void test(){
		asm{
			lea RAX, test;
		}
	}
}else{
	pragma(msg, "DSTRESS{XFAIl}: X86 assembler not supported");
	static assert(0);
}

int main(){
	test();

	return 0;
}
