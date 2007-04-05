// $HeadURL$
// $Date$
// $Author$

// @author@	Ville Mattila <ville.mattila@iki.fi>
// @date@	2007-01-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=814
// @desc@	[Issue 814] lazy argument + variadic arguments

module dstress.run.l.lazy_04_C;

import std.stdarg;

void foo(lazy char[] expression, ...){
	if("Dog" != expression){
		assert(0);
	}
	if (_arguments.length > 0) {
		if ((_arguments[0]) == typeid(char[])) {
			char[] s = va_arg!(char[])(_argptr);
			if("Katze" != s){
				assert(0);
			}
		}else{
			assert(0);
		}
	}else{
		assert(0);
	}
}

int main(){
	foo("Dog", "Katze", "Fau");
	return 0;
}
