// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3933

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
