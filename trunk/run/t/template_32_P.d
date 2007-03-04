// $HeadUR$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=487

module dstress.run.t.template_32_P;

template sum(idouble x){
	static if (x <= 1.0i){
		const idouble sum = x;
	}else{
		const idouble sum = x + sum!(x - 1.0i);
	}
}

int main(){
	idouble x = sum!(1.0i);

	if(x != 1.0i){
		assert(0);
	}

	return 0;
}
