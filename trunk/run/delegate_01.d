// $HeadURL$
// $Date$
// $Author$

// @author@	Bent Rasmussen <exo@bent-rasmussen.info>
// @date@	2004-08-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1338

module dstress.run.delegate_01;

struct List(T){
	T[] S;

	void bug(void delegate(ref T) f){
		f(S[0]);
	}
}

int main(){
	List!(bool) list;
	return 0;
}

