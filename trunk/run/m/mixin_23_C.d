// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-19
// @uri@	news:bug-211-3@http.d.puremagic.com/issues/

module dstress.run.m.mixin_23_C;

int status;

template T(alias a) {
	int dummy;
}

class C{
        mixin T!(
		function(){
			status++;
		}
	) mixed;
}


int main(){
	C c = new C();

	c.mixed.a();

	if(status != 1){
		assert(0);
	}

	return 0;
}
