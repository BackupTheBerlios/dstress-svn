// $HeadURL$
// $Date$
// $Author$

// @WARNING@ direct access to Phobos's GC

// __DSTRESS_ELINE__ 15

module dstress.run.delete_05;

import std.gc;

union MyUnion{
	delete(void* p){
		assert(0);
	}
}

void test(){
	MyUnion t;
}

int main(){
	test();
	std.gc.fullCollect();
	std.gc.minimize();
	return 0;
}
