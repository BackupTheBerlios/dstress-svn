// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2006-02-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6231

module dstress.run.a.alias_30_I;

struct Foo(TYPE){
	TYPE x;
}

int main(){
	alias .Foo!(int) Foo;
	Foo* f = new Foo();

	if(typeid(typeof(f.x)) == typeid(int)){
		return 0;
	}
}
