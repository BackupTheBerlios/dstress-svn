// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-06-10
// @uri@	news:opsr4tl4lz23k2f5@nrage.netwin.co.nz

module dstress.nocompile.o.overload_25_C;

template testT(T){
	size_t test(T t){
		return t.max;
	}
}

size_t test(ubyte t){
	return t.max;
}

mixin testT!(ubyte);
