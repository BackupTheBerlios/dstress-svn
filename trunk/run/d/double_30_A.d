// $HeadURL$
// $Date$
// $Author$

// @autho@	<digitalmars-com@baysmith.com>
// @date@	2006-07-05
// @uri@	news:bug-240-3@http.d.puremagic.com/issues/

module dstress.run.d.double_30_A;

int main(){
	double x = ulong.max;

	double a = 1L << 63;

	if(x < a || a * 8 > x){
		assert(0);
	}

	return 0;
}

