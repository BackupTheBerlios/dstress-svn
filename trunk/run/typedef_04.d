// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/typedef_04.d,v 1.1 2004/08/21 22:51:39 th Exp $

// @author@ 	berupon <yu@3dcg.ne.jp>
// @date@	2004-06-10
// @uri@	news://20040611054017.9D25.YU@3dcg.ne.jp

typedef int Int;

class Test( T = Int){
}

alias Test!() Test2;

int main(){
	Test2 t;
	return 0;
}
