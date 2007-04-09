// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-03-30
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3385

// __DSTRESS_ELINE__ 14

module dstress.nocompile.bug_20050330_A;

template Blah(int a, alias B){
	mixin Blah!(a, B);
}

int main(){
	int a;
	mixin Blah!(5,a);
	return 0;
}
