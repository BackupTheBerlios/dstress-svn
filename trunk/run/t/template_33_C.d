// $HeadUR$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.t.template_33_C;

template sum(creal x){
	static if (x.re <= 1.0L){
		const creal sum = x;
	}else{
		const creal sum = x + sum!(x - 1.0L);
	}
}

int main(){
	creal x = sum!(3.0L);

	if(x != 6.0L){
		assert(0);
	}

	return 0;
}
