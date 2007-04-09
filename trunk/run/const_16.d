// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-03-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3290

module dstress.run.const_16;

struct StructA{ 
	int a;
}

const int i = 15;

const StructA s1 = { i+1 };
const StructA s2 = s1;

int main(){
	assert(s1.a == 16);
	assert(s2.a == 16);
	return 0;
}
