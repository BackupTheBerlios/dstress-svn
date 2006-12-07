// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <dvdfrdmn@users.sf.net>
// @date@	2006-12-07
// @uri@	news:bug-661-3@http.d.puremagic.com/issues/
// @desc@	[Issue 661] New: Error using a zero-init struct's init property

module dstress.run.s.struct_initialization_08_A;

struct S {
	int x = 0x12_34_AF_D1;
}

int main() {
	S s;
	s.x = 1;

	s = s.init;

	if(s.x != 0x12_34_AF_D1){
		assert(0);
	}

	return 0;
}
