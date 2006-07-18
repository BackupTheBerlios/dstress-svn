// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-06-10
// @uri@	news:opsr4tl4lz23k2f5@nrage.netwin.co.nz

module dstress.run.o.overload_25_A;

template testT(T){
	size_t test(T t){
		return t.max;
	}
}

mixin testT!(byte);
mixin testT!(ubyte);
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
