// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2005-02-22
// @uri@	news:opsmlwgpo1aaezs2@robingood
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3034

module dstress.run.mixin_06;

struct S{
	int x;
}

const S s = { x:2 };

int main(){
	assert(s.x==2);
	return 0;
}