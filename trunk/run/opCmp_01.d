// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/opCmp_01.d,v 1.1 2004/08/20 23:42:53 th Exp $

// @author@	k2 <k2_member@pathlink.com>
// @date@	2004-08-04
// @uri@	news://ceq9g7$25mj$1@digitaldaemon.com

struct MyStruct{
	int opCmp(MyStruct m){
		return 0;
	}
}

int main(){
	MyStruct[] s;
	s.sort;
	return 0;
}
