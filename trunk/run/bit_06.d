// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/bit_06.d,v 1.1 2004/08/20 23:42:51 th Exp $

// @author@	Carlos Santander B. <carlos8294@msn.com>
// @date@	2004-08-20
// @uri@	news://cg41gm$2u2d$1@digitaldaemon.com

union MyUnion{
	bit check;
}

int main(){
	MyUnion u;
	u.check = 0 != 0;
	return 0;
}
