// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-21
// @uri@	news:bug-215-3@http.d.puremagic.com/issues/

module dstress.run.t.template_38_D;

template T() {
	template foo(int i) {
		bar b;
	}

        int x = 1;
}


class C{
        mixin T!();
}

int main(){
	C c = new C();
	if(c.x != 1){
		assert(0);
	}

	return 0;
}
