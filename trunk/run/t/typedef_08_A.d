// $HeadURL$
// $Date$
// $Author$

// @author@	Mizuno Hiroki <hiroki1124@hotmail.com>
// @date@	2005-05-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3991

module dstress.run.t.typedef_08_A;

union Org{
	int x;
}

typedef Org Ali;

int main(){
	Ali a;

	assert(a.x==0);
	a.x=2;
	assert(a.x==2);
	
	return 0;
}

