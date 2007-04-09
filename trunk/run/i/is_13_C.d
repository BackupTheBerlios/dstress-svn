// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-03-15
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6674

module dstress.run.i.is_13_C;

class C{
	static int test(int i){
		return i * 2;
	}
}

int main(){
	if(!is(C.test == function)){
		assert(0);
	}

	return 0;
}
