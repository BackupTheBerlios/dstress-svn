// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-11-09
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5378

// __DSTRESS_ELINE__ 22 

module dstress.nocompile.a.abstract_15;

class A {
	abstract void test() {
	}
}

class B : A {
}

void main(){
	B b = new B();
}
