// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-03-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3290

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
