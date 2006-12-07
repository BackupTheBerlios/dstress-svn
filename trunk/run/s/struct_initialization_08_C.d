// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-07
// @uri@	news:bug-661-3@http.d.puremagic.com/issues/
// @desc@	[Issue 661] New: Error using a zero-init struct's init property

module dstress.run.s.struct_initialization_08_C;

struct S {
	float x = 12.34f;
}

int main() {
	S s;
	s.x = 1.0f;

	s = S.init;

	if(s.x != 12.3f){
		assert(0);
	}

	return 0;
}
