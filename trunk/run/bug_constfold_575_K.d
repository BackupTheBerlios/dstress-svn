// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-04-24
// @uri@	news:d4deen$1j8c$1@digitaldaemon.com

module dstress.run.bug_constfold_575_K;

int main(){
	float a=float.min;
	float b=float.max;
	if (a > b){
		assert(0);
	}
	return 0;
}
