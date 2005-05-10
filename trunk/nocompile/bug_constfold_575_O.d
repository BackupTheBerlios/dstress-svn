// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-04-24
// @uri@	news:d4deen$1j8c$1@digitaldaemon.com

// __DSTRESS_ELINE__ 16

module dstress.nocompile.run.bug_constfold_575_O;

int main(){
	cdouble a=cdouble.min;
	cdouble b=cdouble.max;
	if (a > b){
		assert(0);
	}
	return 0;
}
