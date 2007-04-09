// $HeadURL$
// $Date$
// $Author$

// @author@ 	berupon <yu@3dcg.ne.jp>
// @date@	2004-06-10
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=444

module dstress.run.typedef_04;

typedef int Int;

class Test( T = Int){
}

alias Test!() Test2;

int main(){
	Test2 t;
	return 0;
}
