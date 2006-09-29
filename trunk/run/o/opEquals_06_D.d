// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-09-24
// @uri@	news:bug-365-3@http.d.puremagic.com/issues/
// @desc@	[Issue 365] New: Regression: Bad code generation for floating point == and !=

module dstress.run.o.opEquals_06_D;

int main(){
	float f;

	if(f != 0){
		if(f == 0){
			assert(0);
		}else{
			return 0;
		}
	}
	assert(0);
}
