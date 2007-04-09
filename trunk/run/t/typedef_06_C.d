// $HeadURL$
// $Date$
// $Author$

// @author@	Mizuno Hiroki <hiroki1124@hotmail.com>
// @date@	2005-05-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3991

module dstress.run.t.typedef_06_C;

class Org{
	static int stat(int i){
		return i*3;
	}
}

typedef Org Ali;

int main(){
	Ali a = new Ali;

	assert(a.stat(3)==9);
	assert(Ali.stat(4)==12);
	
	return 0;
}

