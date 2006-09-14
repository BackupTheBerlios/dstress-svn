// $HeadURL$
// $Date$
// $Author$

// @author@	Johan Granberg <lijat.meREM@OVEgmail.com>
// @date@	2006-09-14
// @uri@	news:eeb08s$2p5n$1@digitaldaemon.com
// @desc@	Incorrect code generation -O2 gdc

module dstress.run.o.odd_bug_09_B;

struct S{
	union{
		void delegate(uint) del;
		void function(uint) fp;
	}
	static S opCall(void function(uint) c,uint i){
		S a;
		a.fp = c;
		return a;
	}
}

S s;

static this(){
	s.fp = &foo;
}

void foo(uint i){
}

int main(){
	foo(0);
	if(! s.fp){
		assert(0);
	}
	s.fp(0);

	return 0;
}

