// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/bit_05.d,v 1.2 2004/09/23 09:44:00 th Exp $

// @author@	Carlos Santander B. <carlos8294@msn.com>
// @date@	2004-08-20
// @uri@	news://cg41gm$2u2d$1@digitaldaemon.com

class MyClass{
	bit check;
}

int main(){
	MyClass c = new MyClass();
	c.check = 0 != 0;
	return 0;
}
