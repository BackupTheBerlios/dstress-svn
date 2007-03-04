// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon
// @date@	2004-09-24
// @uri@	news:cj0qf6$2u2v$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1940

module dstress.run.abstract_07;

abstract class A{
	int test(){
		return 3;
	}
}

class B : A{
}

int main(){
	A a = new B();
	assert(a.test()==3);
	return 0;
}
