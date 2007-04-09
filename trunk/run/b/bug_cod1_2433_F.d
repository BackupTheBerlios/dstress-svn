// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3933

module dstress.run.b.bug_cod1_2433_F;

idouble test(){
	return 1.0i;
}

int main(){
	cdouble c = 0.0+0.0i;
	c = c + test;
	if(c.re != 0.0){
		assert(0);
	}
	if(c.im != 1.0){
		assert(0);
	}
	return 0;
}
