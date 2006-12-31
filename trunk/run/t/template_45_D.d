// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <h3r3tic@mat.uni.torun.pl>
// @date@	2006-10-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=465
// @desc@	[Issue 465] New: errors when trying to use static templated methods

module dstress.run.t.template_45_D;

ifloat status;

struct S {
	static void func(T)(T a) {
		status += a;
        }
}

int main() {
	status = 1.0Fi;

	S s;
	s.func!(ifloat)(2.0Fi);

	if(status != 3.0Fi){
		assert(0);
	}

	return 0;
}


