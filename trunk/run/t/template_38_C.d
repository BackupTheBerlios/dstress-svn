// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=215

module dstress.run.t.template_38_C;

template T() {
	template foo() {
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
