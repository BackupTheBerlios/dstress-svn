// $HeadUR$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.t.template_33_E;

template sum(cdouble x){
	static if (x.re <= 1.0){
		const cdouble sum = x;
	}else{
		const cdouble sum = x + sum!(x - 1.0);
	}
}

int main(){
	cdouble x = sum!(2.0);

	if(x != 3.0){
		assert(0);
	}

	return 0;
}
