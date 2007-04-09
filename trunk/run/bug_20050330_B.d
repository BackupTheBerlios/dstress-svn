// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-03-30
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3385

// __DSTRESS_ELINE__ 14

module dstress.run.bug_20050330_B;

template Blah(int a, alias B){
	mixin Blah!(a-1, B);
}

template Blah(int a:0, alias B){
	int x(){
		return a;
	}
}

int main(){
	int a;
	mixin Blah!(5,a);
	return 0;
}
