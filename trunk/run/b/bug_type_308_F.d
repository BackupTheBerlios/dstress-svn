// $HeadURL$
// $Date$
// $Author$

// @author@	<godaves@yahoo.com>
// @date@	2006-06-27
// @uri@	news:bug-227-3@http.d.puremagic.com/issues/

module dstress.run.b.bug_type_308_F;

struct S{
	int i;

	S foo(int x){
		S s;

		s.i = x;

		return s;
	}
}

int main(){
	S[] s;
	S y;

	s = s ~ y.foo(6);
	s = s ~ y.foo(1);

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
