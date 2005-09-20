// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-09-19
// @uri@	news:dgm16f$19t9$1@digitaldaemon.com

// __DSTRESS_ELINE__ 18

module dstress.nocompile.c.const_24_E;

void test(char[] s){
}

void main(){
	const char[] s = "\uC616";
	test(bug(s));
}