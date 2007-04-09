// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-06-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4300
// @desc@	misplaced initialisers in static rectangular array

module dstress.run.a.array_initialization_17_B;

const float[6] arr = [
	1: 1.0f, 2.0f,
	4: 4.0f
];

bool equal(float a, float b){
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
	if(!equal(arr[0], float.nan)){
		assert(0);
	}
	if(arr[1] != 1.0f){
		assert(0);
	}
	if(arr[2] != 2.0f){
		assert(0);
	}
	if(!equal(arr[3], float.nan)){
		assert(0);
	}
	if(arr[4] != 4.0f){
		assert(0);
	}
	if(!equal(arr[5], float.nan)){
		assert(0);
	}

	return 0;
}
