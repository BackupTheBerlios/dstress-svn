// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/delegate_01.d,v 1.1 2004/08/20 23:42:52 th Exp $

// @author@	Ben Rasmussen <exo@bent-rasmussen.info>
// @date@	2004-08-12
// @uri@	news://cfe9vt$1btr$1@digitaldaemon.com

struct List(T){
	T[] S;

	void bug(void delegate(inout T) f){
		f(S[0]);
	}
}

int main(){
	List!(bit) list;
	return 0;
}

