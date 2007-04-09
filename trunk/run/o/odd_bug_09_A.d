// $HeadURL$
// $Date$
// $Author$

// @author@	Johan Granberg <lijat.meREM@OVEgmail.com>
// @date@	2006-09-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=8389
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1034
// @desc@	Incorrect code generation -O2 gdc

module dstress.run.o.odd_bug_09_A;

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
	s = S(&foo, 0);
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

