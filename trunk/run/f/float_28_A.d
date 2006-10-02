// $HeadURL$
// $Date$
// $Author$

// @author@	Lionello Lunesu <lio@lunesu.com>
// @date@	2006-08-18
// @uri@	news:bug-291-3@http.d.puremagic.com/issues/
// @desc@	[Issue 291] assertion

module dstress.run.f.float_28_A;

int main(){
	float r = real.nan;

	if(r == 0){
		assert(0);
	}

	if(r != 0){
		return 0;
	}

	assert(0);
}
