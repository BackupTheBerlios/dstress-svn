// $HeadURL$
// $Date$
// $Author$

// @WARNING@ direct access to Phobos's GC

// __DSTRESS_ELINE__ 15

module dstress.run.delete_04;

import std.gc;

class MyClass{
	delete(void* p){
		assert(0);
	}
}

void test(){
	MyClass t = new MyClass();
	delete t;
}

int main(){
	test();
	std.gc.fullCollect();
	std.gc.minimize();
	return 0;
}
