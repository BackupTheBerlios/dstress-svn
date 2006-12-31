// $HeadURL$
// $Date$
// $Author$

// @author@	Lionello Lunesu <lio@lunesu.com>
// @date@	2006-08-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=291
// @desc@	[Issue 291] assertion

module dstress.run.r.real_27_B;

int main(){
	real r;

	if(r == 0){
		assert(0);
	}
	
	if(r != 0){
		return 0;
	}

	assert(0);
}
