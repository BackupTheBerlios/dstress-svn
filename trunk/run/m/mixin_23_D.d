// $HeadURL$
// $Date$
// $Author$

// @author@	<h3r3tic@mat.uni.torun.pl>
// @date@	2006-06-19
// @uri@	news:bug-211-3@http.d.puremagic.com/issues/

module dstress.run.m.mixin_23_D;

int status;

template T(alias a) {
	int dummy;
}

class C{
        mixin T!(
		{
			status++;
		}
	) mixed;
}


int main(){
	C c = new C();

	return 0;
}
