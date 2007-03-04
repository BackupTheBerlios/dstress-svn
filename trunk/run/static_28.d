// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic <foo@bar.baz>
// @date@	2004-12-26
// @uri@	news:cqmmre$1vvo$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2605

module dstress.run.static_28;

union MyUnion{
	static int x;
}

void foo(int i){
	union MyUnione{
		static int x;
	}
}

int main(){
	return 0;
}
