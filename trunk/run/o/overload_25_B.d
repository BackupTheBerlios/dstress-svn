// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-06-10
// @uri@	news:opsr4tl4lz23k2f5@nrage.netwin.co.nz

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
	assert(test(b)==b.max);

	ubyte ub;
	assert(test(ub)==ub.max);

	int i;
	assert(test(i)==i.max);

	return 0;
}