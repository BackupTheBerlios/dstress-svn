// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/template_01.d,v 1.1 2004/08/20 23:42:54 th Exp $

// @author@	Daniel Horn <hellcatv@hotmail.com>
// @date@	2004-05-01
// @uri@	news://c6uoje$14a1$1@digitaldaemon.com

template T(int size){
	int vec[size];
}

int main(){
	int a = T!(4>1?4:1).vec[0];
	int b = T!(4==1?1:(1==1?4:(4>1?1:4))).vec[0];
	return 0;
}
