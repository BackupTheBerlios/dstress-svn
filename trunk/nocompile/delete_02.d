// $HeadURL$
// $Date$
// $Author$

// @WARNING@ direct usage of Phobos's GC

// __DSTRESS_ELINE__ 26

module dstress.nocompile.delete_02;

import std.gc;

int status;

struct MyStruct{
	int i;

	delete(void* p){
		assert(status==0);
		status--;
	}
}

void test(){
	MyStruct t;
	delete t;
}

int main(){
	test();
	std.gc.fullCollect();
	std.gc.minimize();
	assert(status==-1);
	return 0;
}
