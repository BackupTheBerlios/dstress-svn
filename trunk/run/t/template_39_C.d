// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=215

module dstress.run.t.template_39_C;

template T() {
	struct S{
		int x = 1;
	}

	S s;
}

struct Bar {
	mixin T!();
}

int main(){
	Bar b;

	if(b.s.x != 1){
		assert(0);
	}

	return 0;
}
