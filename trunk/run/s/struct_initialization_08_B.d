// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=661
// @desc@	[Issue 661] New: Error using a zero-init struct's init property

module dstress.run.s.struct_initialization_08_B;

struct S {
	float x = 12.34f;
}

int main() {
	S s;
	s.x = 1.0f;

	s = s.init;

	if(s.x != 12.3f){
		assert(0);
	}

	return 0;
}
