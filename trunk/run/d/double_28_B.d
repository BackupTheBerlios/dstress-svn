// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-03-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=21

module dstress.run.d.double_28_B;

int main(){
	static if((real.max >= double.max)
		&& (real.dig >= double.dig))
	{
		double d = double.max;
		real r = d;

		if(r != double.max){
			assert(0);
		}
	}
	return 0;
}
