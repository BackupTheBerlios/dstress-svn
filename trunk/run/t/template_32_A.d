// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.t.template_32_A;

template sum(real x){
	static if (x <= 1.0L){
		const real sum = x;
	}else{
		const real sum = x + sum!(x - 1.0L);
	}
}

int main(){
	real x = sum!(3.0L);

	if(x != 6.0L){
		assert(0);
	}

	return 0;
}
