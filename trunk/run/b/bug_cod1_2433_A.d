// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-12
// @uri@	news:d5mhd7$2t84$1@digitaldaemon.com

module dstress.run.b.bug_cod1_2433_A;

ifloat test(){
	return 1.0fi;
}

int main(){
	cfloat c = 0.0f+0.0fi;
	c += test;
	if(c.re != 0.0f){
		assert(0);
	}
	if(c.im != 1.0f){
		assert(0);
	}
	return 0;
}
