// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-01
// @uri@	news:bug-172-3@http.d.puremagic.com/bugzilla/

module dstress.run.b.bug_e2ir_736_A;

int status;

template Foo(){
	template func() {
		int func() {
			return status;
		}
	}
}

class Baz{
	mixin Foo bar;
}

int main() {
	status = 3;
	Baz b = new Baz();
	if(b.bar.func!()() != 3){
		assert(0);
	}

	return 0;
}

