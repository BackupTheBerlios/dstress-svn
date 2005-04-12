// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <ben.hinkle@gmail.com>
// @date@	2005-04-11
// @uri@	news:d3f87v$14n7$1@digitaldaemon.com

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

