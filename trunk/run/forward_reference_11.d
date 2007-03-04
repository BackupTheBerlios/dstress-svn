// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-01-12
// @uri@	news:cs2t3t$1700$2@digitaldaemon.com
// @uri@	nntp://news.digitalmars.com/digitalmars.D.bugs/2673

module dstress.run.forward_reference_11;

int main(){
	MyEnum e;
	assert(e==MyEnum.A);
	return 0;
}

enum MyEnum{
	A=19,
	B
}
