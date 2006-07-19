// $HeadURL$
// $Date$
// $Author$

// @author@	<godaves@yahoo.com>
// @date@	2006-06-27
// @uri@	news:bug-227-3@http.d.puremagic.com/issues/

module dstress.run.b.bug_type_308_E;

struct S{
	int i;

	static S foo(int x){
		S s;

		s.i = x;

		return s;
	}
}

int main(){
	S[] s;
	S y;

	y = S.foo(6);
	s = s ~ y;

	y = S.foo(1);
	s = s ~ y;

	if(s.length != 2){
		assert(0);
	}
	if(s[0].i != 6){
		assert(0);
	}
	if(s[1].i != 1){
		assert(0);
	}

	return 0;
}
