// $HeadURL$
// $Date$
// $Author$

// @author@	k2 <k2_member@pathlink.com>
// @date@	2004-11-30
// @uri@	news:cohgrc$n3v$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2379

module dstress.run.class_initialization_01;

class Parent{
	int s;
	this(){
	}
}


class Child : Parent {
	int a;
	int b;
	int c;
	int d;
}

int main(){
	Child a = new Child();

	assert(a.s == 0);
	assert(a.a == 0);
	assert(a.b == 0);
	assert(a.c == 0);
	assert(a.d == 0);

	return 0;
}
