// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-22
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4119

module dstress.run.a.alias_24_B;

interface S{
}

alias S [] SList;

interface I{
	void test(SList);
}

class C : I{
	void test(SList o){
	}
}

int main(){
	C c = new C;
	return 0;
}
