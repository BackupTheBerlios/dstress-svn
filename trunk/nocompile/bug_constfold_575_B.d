// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-04-24
// @uri@	news:d4deen$1j8c$1@digitaldaemon.com

// __DSTRESS_ELINE__ 14

module dstress.nocompile.bug_constfold_575_B;

int main(){
	if (cdouble.min > cdouble.max){
		assert(0);
	}
	return 0;
}
