// $HeadURL$
// $Date$
// $Author$

// @author@	Gregor Richards <akaquinn@hotmail.com>
// @date@	2006-11-20
// @uri@	news:bug-578-31@http.d.puremagic.com/issues/
// @desc@	[Issue 578] New: GDC evaluates rvalue of array assignment repeatedly

module dstress.run.o.opSliceAssign_03_A;

int status;

int test(){
	status++;
	if(status != 1){
		assert(0);
	}
	return status;
}

int main(){
	int[10] a;
	a[] = test();

	if(a.length != 10){
		assert(0);
	}
	foreach(int i; a){
		if(i != 1){
			assert(0);
		}
	}

	return 0;
}
