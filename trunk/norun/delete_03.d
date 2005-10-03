// $HeadURL$
// $Date$
// $Author$

// @WARNING@ direct access to Phobos's GC

// __DSTRESS_ELINE__ 15

module dstress.run.delete_03;

import std.gc;

struct MyStruct{
	delete(void* p){
		assert(0);
	}
}

void test(){
	MyStruct* t = new MyStruct();
	assert(t);
}

int main(){
	test();
	std.gc.fullCollect();
	std.gc.minimize();
	return 0;
}
