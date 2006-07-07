// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-21
// @uri@	news:bug-215-3@http.d.puremagic.com/issues/

module dstress.run.t.template_38_A;

template T() {
	template foo() {
		bar b;
	}

        int x = 1;
}


struct S {
        mixin T!();
}

int main(){
	S s;
	if(s.x != 1){
		assert(0);
	}

	return 0;
}
