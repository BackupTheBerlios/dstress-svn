// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=487

module dstress.run.t.template_32_C;

template sum(real x){
	static if (x <= 1.0L){
		const real sum = x;
	}else{
		const real sum = x + sum!(x - 1.0L);
	}
}

int main(){
	real x = sum!(1.0L);

	if(x != 1.0L){
		assert(0);
	}

	return 0;
}
