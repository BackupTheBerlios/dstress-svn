// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-06-10
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4271

module dstress.run.o.overload_25_B;

template testT(T){
	size_t test(T t){
		return t.max;
	}
}

size_t test(ubyte t){
	return t.max;
}

mixin testT!(byte);
mixin testT!(int);

int main(){
	byte b;
	if(test(b) != b.max){
		assert(0);
	}

	ubyte ub;
	if(test(ub) != ub.max){
		assert(0);
	}

	int i;
	if(test(i) != i.max){
		assert(0);
	}

	return 0;
}
