// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/cast_03.d,v 1.1 2004/08/20 23:42:43 th Exp $

// @author@	Walter <newshound@digitalmars.com>
// @date@	2004-08-16
// @uri@	news://cfpk7u$1qgs$1@digitaldaemon.com


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
