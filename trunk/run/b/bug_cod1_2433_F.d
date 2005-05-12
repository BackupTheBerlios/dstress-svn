// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-12
// @uri@	news:d5mhd7$2t84$1@digitaldaemon.com

module dstress.run.b.bug_cod1_2433_F;

idouble test(){
	return 1.0i;
}

int main(){
	cdouble c = 0.0+0.0i;
	c = c + test;
	assert(c.re==0.0);
	assert(c.im==1.0);
	return 0;
}
