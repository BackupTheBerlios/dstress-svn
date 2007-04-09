// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <ben.hinkle@gmail.com>
// @date@	2005-04-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3619

module dstress.run.mixin_11;

int status;

template Share(T) {
	int opEquals(T x){
		return status;
	}
}

struct List(T){
	mixin Share!(List);
}

int main(){
	List!(int) x;
	List!(int) y;
	
	assert(x!=y);
	status=1;
	assert(x==y);

	return 0;
}

