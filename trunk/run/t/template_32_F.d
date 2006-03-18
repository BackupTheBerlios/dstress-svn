// $HeadUR$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.t.template_32_F;

template sum(double x){
	static if (x <= 1.0){
		const double sum = x;
	}else{
		const double sum = x + sum!(x - 1.0);
	}
}

int main(){
	double x = sum!(3.0);

	if(x != 6.0){
		assert(0);
	}

	return 0;
}
