// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-01-12
// @uri@	news:cs2t3t$1700$2@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2673

module dstress.run.forward_reference_09;

union MyUnion{
	MyEnum e;
}

enum MyEnum{
	A=19,
	B
}

int main(){
	MyUnion u;
	assert(u.e==MyEnum.A);
	return 0;
}
