// $HeadURL$
// $Date$
// $Author$

// @author@	<pmoore_member@pathlink.com>
// @date@	2006-06-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=7627

module dstress.compile.a.asm_offset_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}

version(runTest){
	int main(){
		asm{
			mov EDI, 10;
			mov EAX, [EDI + 10];
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}

