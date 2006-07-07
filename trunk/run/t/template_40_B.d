// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-20
// @uri@	news:bug-213-3@http.d.puremagic.com/issues/

module dstress.run.t.template_40_B;

template Outer(){
        template Inner() {
                int Inner;
        }
        
	int dummy;
}

struct Bar {
        mixin Outer!();
}

int main(){
	if(! is(Bar.Inner!())){
		assert(0);
	}
	if(! is(Bar.dummy)){
		assert(0);
	}

	return 0;
}
