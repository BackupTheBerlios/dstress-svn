// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-03-21
// @uri@	news:d1mc4q$2peg$3@digitaldaemon.com

module dstress.run.c.const_16_B;

struct StructA{ 
	int a;
}

const StructA s = { 1 };
const int x = s.a + 1;

int main(){
	assert(s1.a == 1);
	assert(x == 2);
	return 0;
}
