// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=211

module dstress.run.m.mixin_23_A;

int status;

template T(alias a) {
	int dummy;
}

class C{
	mixin T!(
		(){
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
