// $HeadURL
// $Date$
// $Author$

// @author@	Russell Wilkins <rwilkins@grovestarsoftware.com>
// @date@	2004-12-04
// @uri@	news:cosoa0$2c50$1@digitaldaemon.com
// @uri@	nntp://news.digitalmars.com/gnu.D/881

module dstress.run.class_10;

class A{
}

class C : B{
}

class B : A{
}

int main (){
	C c = new C();
	return 0;
}
