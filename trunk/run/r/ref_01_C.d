// $HeadURL$
// $Date$
// $Author$

module dstress.run.r.ref_01_C;

int main(){
	char[] arr = "abc".dup;

	foreach(ref element; arr){
		element += 1;
	}

	if("bcd" != arr){
		assert(0);
	}
	return 0;
}
