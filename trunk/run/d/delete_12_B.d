// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2006-02-15
// @uri@	news:dsv036$qlt$1@digitaldaemon.com

// @WARNING@	direct use of Phobos

module dstress.run.d.delete_12_B;

import std.c.stdlib;
import std.outofmemory;

int status;

class Foo{
	int i;

	new(size_t sz){
		void* p;

		p = malloc(sz);
    
		if (!p){
			throw new OutOfMemoryException();
		}
		
		if(status++ != 1){
			assert(0);
		}

		return p;
	}

	delete(void* p){
		if(status++ != 2){
			assert(0);
		}
	}
}

void test(){
	auto Foo f = new Foo();
}

int main(){
	if(status++ != 0){
		assert(0);
	}

	test();

	if(status++ != 3){
		assert(0);
	}

	return 0;
}
