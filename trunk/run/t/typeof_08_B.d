// $HeadURL$
// $Date$
// $Author$

// @author@	<oskar.linde@gmail.com>
// @date@	2005-03-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6684

module dstress.run.t.typeof_08_B;

template declare(X){
	X declare;
}

typeof(declare!(typeof("abc"w))[0 .. length]) y;

int main(){
	static if(!is(typeof(y) == wchar[])){
		static assert(0);
	}

	if(y.length != 0){
		assert(0);
	}

	return 0;
}

