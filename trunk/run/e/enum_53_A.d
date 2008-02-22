// $HeadURL$
// $Date$
// $Author$

// @author@	<burton-radons@shaw.ca>
// @date@	2007-02-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1836
// @desc@	[Issue 1836] New: Inline assembler can't use enum values as parameters.

module dstress.run.e.enum_53_A;

version(D_InlineAsm_X86){
	version = test;
}else version(D_InlineAsm_X86_64){
	version = test;
}

version(test){
	enum : int{
		enumeration = 1,
	}

	int main(){
		asm{
			mov EAX, enumeration;
			cmp EAX, 1;
			jne Lerror;
	        }
	
		return 0;
	Lerror:
		assert(0);
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: X86 assembler not supported");
	static assert(0);
}
