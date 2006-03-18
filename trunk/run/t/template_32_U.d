// $HeadUR$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.t.template_32_U;

template sum(ireal x){
	static if (x <= 1.0Li){
		const ireal sum = x;
	}else{
		const ireal sum = x + sum!(x - 1.0Li);
	}
}

int main(){
	ireal x = sum!(1.0Li);

	if(x != 1.0Li){
		assert(0);
	}

	return 0;
}
