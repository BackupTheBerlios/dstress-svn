// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2006-05-25
// @uri@	news:e546c7$267o$1@digitaldaemon.com

module dstress.run.s.struct_25_E;

struct S2 {
	int d;
}

struct S1 {
	union {
		int a;
		long b;
		S2 c;
	}
}

int main(){
	S1 e;
	S2 f;
	e.c = f;

	return 0;
}