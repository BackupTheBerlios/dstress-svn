// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-03-06
// @uri@	news:bug-21-3@http.d.puremagic.com/bugzilla/

module dstress.run.d.double_28_A;

int main(){
	static if((real.max >=  double.max)
		&& (real.dig >= double.dig)
		&& (double.max >= 1.7976931348623157e+308))
	{
		double d = 1.7976931348623157e+308;
		real r = d;

		if(r != 1.7976931348623157e+308){
			assert(0);
		}
	}
	return 0;
}
