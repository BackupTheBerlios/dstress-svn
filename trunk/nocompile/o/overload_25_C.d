// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-06-10
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4271

// __DSTRESS_ELINE__ 23

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
