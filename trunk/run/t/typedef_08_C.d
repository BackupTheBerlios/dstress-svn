// $HeadURL$
// $Date$
// $Author$

// @author@	Mizuno Hiroki <hiroki1124@hotmail.com>
// @date@	2005-05-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3991

module dstress.run.t.typedef_08_C;

union Org{
	int x;
	static int stat(int i){
		return i*3;
	}	
}

typedef Org Ali;

int main(){
	Ali a;

	assert(a.stat(3)==9);
	assert(Ali.stat(4)==12);
	assert(Org.stat(5)==15);
	
	return 0;
}

