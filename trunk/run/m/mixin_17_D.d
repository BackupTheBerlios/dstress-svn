// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-02-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6360

// @WARNING@ direct use of Phobos

module dstress.run.m.mixin_17_D;

import std.stdarg;

int status;

void dummy(...){
	if(_arguments.length != 1){
		assert(0);
	}
	status = va_arg!(int)(_argptr);;
}

template mix(){
	int i;

	void test(){
		dummy(i);
	}
}

int main(){
	assert(status == 0);

	mixin mix!();

	test();

	if(status != 0){
		assert(0);
	}

	test();

	if(status != 0){
		assert(0);
	}

	return 0;
}
