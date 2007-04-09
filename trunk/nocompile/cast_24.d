// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic
// @date@	2005-03-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3234

// __DSTRESS_ELINE__ 16

module dstress.nocompile.cast_24;

int main(){
	int[10] arr;
	int *p = &arr[5];
	p - arr;
	return 0;
}
