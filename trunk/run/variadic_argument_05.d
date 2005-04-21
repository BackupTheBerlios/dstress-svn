// $HeadURL$
// $Date$
// $Author$

// @author@	Manfred Nowak <svv1999@hotmail.com>
// @date	2005-04-21
// @uri@	news:d46udp$1mqe$1@digitaldaemon.com

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

