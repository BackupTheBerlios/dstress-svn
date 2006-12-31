// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-20
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=213

module dstress.run.t.template_40_A;

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
	typeof(Bar.Inner!()) x;
	typeof(Bar.dummy) y;

	return 0;
}
