// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-12
// @uri@	news:d5mhd7$2t84$1@digitaldaemon.com

module dstress.run.b.bug_cod1_2433_E;

ireal test(){
	return 1.0L;
}

int main(){
	creal c = 0.0L+0.0Li;
	c = c + test;
	assert(c.re==0.0L);
	assert(c.im==1.0L);
	return 0;
}
