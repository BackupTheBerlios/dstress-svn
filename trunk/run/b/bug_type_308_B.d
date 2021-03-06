// $HeadURL$
// $Date$
// $Author$

// @author@	<godaves@yahoo.com>
// @date@	2006-06-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=227

module dstress.run.b.bug_type_308_B;

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

	s = s ~ S.foo(6);
	s = s ~ S.foo(1);

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
