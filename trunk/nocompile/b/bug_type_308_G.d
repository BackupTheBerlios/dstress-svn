// $HeadURL$
// $Date$
// $Author$

// @author@	<godaves@yahoo.com>
// @date@	2006-06-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=227

// __DSTRESS_ELINE__ 28

module dstress.nocompile.b.bug_type_308_G;

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

	s = s ~ S.foo(6);

	return 0;
}
