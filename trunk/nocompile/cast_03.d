// $HeadURL$
// $Date$
// $Author$

// @author@	Walter <newshound@digitalmars.com>
// @date@	2004-08-16
// @uri@	news:cfpk7u$1qgs$1@digitaldaemon.com

// __DSTRESS_ELINE__ 27

module dstress.nocompile.cast_03;

interface MyInterface{
}

class MyClass : MyInterface {
}

int main(){
	MyClass c;
	c = new MyClass();
	
	MyInterface i;
	i = c;

	Object o;
	o = i;
	return 0;
}
