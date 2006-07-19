// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-04-23
// @uri@	news:d4cemj$mma$1@digitaldaemon.com

// __DSTRESS_ELINE__ 16

module dstress.nocompile.bug_cg87_1240_C;

int main(){
	float r;

	if (r < ifloat.max){
		assert(0);
	}
	return 0;
}
