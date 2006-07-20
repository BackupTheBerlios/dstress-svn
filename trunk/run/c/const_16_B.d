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
	if(s.a != 1){
		assert(0);
	}
	if(x != 2){
		assert(0);
	}
	return 0;
}
