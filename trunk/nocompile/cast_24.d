// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic
// @date@	2005-03-18
// @uri@	news:d1d4lc$25e2$1@digitaldaemon.com

// __DSTRESS_ERROR__ 16

module dstress.nocompile.cast_24;

int main(){
	int[10] arr;
	int *p = &arr[5];
	p - arr;
	return 0;
}
