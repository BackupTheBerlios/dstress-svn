// $HeadURL
// $Date$
// $Author$

// @author@	Russell Wilkins <rwilkins@grovestarsoftware.com>
// @date@	2004-12-04
// @uri@	news:cosoa0$2c50$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/gnu.D/881

module dstress.run.class_09;

class A{
}

class B : A{
}

class C : B{
}

int main (){
	C c = new C();
	return 0;
}
