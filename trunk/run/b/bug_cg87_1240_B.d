// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-04-23
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3784

// __DSTRESS_ELINE__ 16

module dstress.nocompile.bug_cg87_1240_B;

int main(){
	ireal r;

	if (r > real.max){
		assert(0);
	}
	return 0;
}
