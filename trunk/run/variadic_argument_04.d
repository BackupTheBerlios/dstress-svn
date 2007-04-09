// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date	2005-04-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3763

// @WARNING@    direct access to Phobos

module dstress.run.variadic_argument_04;

import std.stdarg;

int status;

template t(T){
	T t(...){
		assert(_arguments[ 0] != typeid( T));
		status++;
		return va_arg!(T)(_argptr);
	}
}

int main(){
	t!(int delegate()) (delegate real(){return 1.1L;});
	if(status != 1){
		assert(0);
	}
	return 0;
}

