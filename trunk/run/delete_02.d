// $HeadURL$
// $Date$
// $Author$

// @WARNING@ direct usage of Phobos's GC

module dstress.run.delete_02;

import std.gc;

int status;

struct MyStruct{
	int i;

	delete(void* p){
		assert(status==0);
		status--;
	}
}

int test(){
	MyStruct t;
	return t.i;
}

int main(){
	test();
	std.gc.fullCollect();
	std.gc.minimize();
	assert(status==-1);
	return 0;
}
