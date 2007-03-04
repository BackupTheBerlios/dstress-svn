// $HeadURL$
// $Date$
// $Author$

// @author@	<digitalmars-com@baysmith.com>
// @date@	2006-07-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=240

module dstress.run.d.double_30_A;

int main(){
	double x = ulong.max;

	double a = 1L << 63;

	if(x < a || a * 8 > x){
		assert(0);
	}

	return 0;
}

