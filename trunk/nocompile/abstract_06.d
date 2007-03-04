// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon
// @date@	2004-09-24
// @uri@	news:cj0qf6$2u2v$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1940

// __DSTRESS_ELINE__ 18

module dstress.nocompile.abstract_06;

abstract class A{
}

int main(){
	A a = new A();
	return 0;
}
