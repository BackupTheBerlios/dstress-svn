// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <bhinkle@mathworks.com>
// @date@	2005-03-23
// @uri@	news:d1s5gs$2odc$1@digitaldaemon.com

// @WARNING@	imports Phobos' gc

module dstress.run.align_08;

import std.gc;

struct S{
	char[] font_face;
}

int main(){
	S[] x;

	for (int i=0;i<3;i++) {
		S s;
		s.font_face="font face".dup;
		x ~= s;
	}

	fullCollect();

	assert(x[0].font_face=="font face");
	assert(x[1].font_face=="font face");

	return 0;
}