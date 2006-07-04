// $HeadURL$
// $Date$
// $Author$

// @author@	<godaves@yahoo.com>
// @date@	2006-06-27
// @uri@	news:bug-227-3@http.d.puremagic.com/issues/

// __DSTRESS_ELINE__ 28

module dstress.nocompile.b.bug_type_308_H;

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

	s ~= S.foo(6);

	return 0;
}
