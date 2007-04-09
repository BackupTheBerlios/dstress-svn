// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date	2005-04-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3763

// @WARNING@    direct access to Phobos

module dstress.run.variadic_argument_05;

import std.stdarg;

int status;

template t(T){
	T t(...){
		assert(_arguments[ 0] == typeid( T));
		status++;
		return va_arg!(T)(_argptr);
	}
}

int main(){
	t!(int delegate()) (delegate int(){return 1;});
	assert(status==1);	
	return 0;
}

