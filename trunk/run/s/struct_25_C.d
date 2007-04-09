// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2006-05-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=7325

module dstress.run.s.struct_25_C;

struct S1 {
	int a;
	long b;
	S2 c;
}

struct S2 {
	int d;
}

int main(){
	S1 e;
	S2 f;
	e.c = f;

	return 0;
}
