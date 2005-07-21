// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-06-14
// @uri@	news:d8m7rs$mtv$2@digitaldaemon.com
// @desc@	misplaced initialisers in static rectangular array

module dstress.run.a.array_initialization_17_B;

const float[6] arr = [
	1: 1.0f, 2.0f,
	4: 4.0f
];

bit equal(float a, float b){
	byte* aa = cast(byte*) &a;
	byte* bb = cast(byte*) &b;

	for(int index=0; index<a.sizeof; index++){
		if(*aa != *bb)
			return false;
		aa++;
		bb++;
	}

	return true;
}

int main(){	
	assert(equal(arr[0], float.nan));
	assert(arr[1]==1.0f);
	assert(arr[2]==2.0f);
	assert(equal(arr[3], float.nan));
	assert(arr[4]==4.0f);
	assert(equal(arr[5], float.nan));

	return 0;
}
