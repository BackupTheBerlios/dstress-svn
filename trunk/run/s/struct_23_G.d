// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Miller <chris@dprogramming.com>
// @date@	2006-02-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6182

module dstress.run.s.struct_23_G;

struct Foo {
	Foo* f;
}

int main(){
	Foo f;
	assert(f.f is null);
	
	f.f = &f;
	assert(*f.f == f);
	
	return 0;
}
