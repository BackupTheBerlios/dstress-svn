// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-04-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3794

// __DSTRESS_ELINE__ 16

module dstress.nocompile.bug_constfold_575_R;

int main(){
	creal a=creal.min;
	creal b=creal.max;
	if (a > b){
		assert(0);
	}
	return 0;
}
