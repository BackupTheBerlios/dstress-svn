// $HeadURL$
// $Date$
// $Author$

// @author@	Lionello Lunesu <lio@lunesu.com>
// @date@	2006-08-18
// @uri@	news:bug-291-3@http.d.puremagic.com/issues/
// @desc@	[Issue 291] assertion

module dstress.run.r.real_27_B;

int main(){
	real r;

	if(r == 0.0){
		assert(0);
	}

	return 0;
}