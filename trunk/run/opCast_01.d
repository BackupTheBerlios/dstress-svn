// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/opCast_01.d,v 1.1 2004/09/23 00:11:54 th Exp $

// @author@	Carlos Santander B. <carlos8294@msn.com>
// @author@	2004-09-18

class Parent{
	void test(int i){
	}
}

class Child : Parent{
	int opCast(){
		return 0;
	}
}

int main(){
	(new Child).test=2;
	return 0;
}
