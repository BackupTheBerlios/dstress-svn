// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-04-24
// @uri@	news:d4deen$1j8c$1@digitaldaemon.com

module dstress.run.bug_constfold_575_Q;

int main(){
	ireal a=ireal.min;
	ireal b=ireal.max;
	if (a > b){
		assert(0);
	}
	return 0;
}
