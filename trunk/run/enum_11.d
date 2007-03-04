// $HeadURL$
// $Date$
// $Author$

// @author@	John Reimer <brk_6502@NO_SPA_M.yahoo.com>
// @date@	2004-12-11
// @uri@	news:cpfvm8$krm$1@digitaldaemon.com
// @uri@	nntp://news.digitalmars.com/digitalmars.D.bugs/2534

module dstress.run.enum_11;

enum Enum{
	A,
	B,
	C
}

struct Struct{
	Enum e;
}

int main(){
	Struct s;
	assert(s.e == Enum.A);
	assert(s.e == 0);
	return 0;
}

