// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2007-02-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=924
// @desc@	[Issue 924] GC collects valid objects

// @WARNING@	direct access to Phobos's GC

module dstress.run.m.memory_management_06_A;

import std.gc;

int state;

class C{
	~this(){
		if((1 != state) && (2 != state)){
			assert(0);
		}
		state++;
	}
}

C[] carr;

void setup(){
	carr = [new C(), new C()];
}

int main(){
	setup();
	fullCollect();
	if(++state > 1){
		assert(0);
	}
	return 0;
}
