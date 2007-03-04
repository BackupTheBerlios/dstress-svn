// $HeadUR$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=487

module dstress.run.t.template_32_S;

template sum(ireal x){
	static if (x <= 1.0Li){
		const ireal sum = x;
	}else{
		const ireal sum = x + sum!(x - 1.0Li);
	}
}

int main(){
	ireal x = sum!(3.0Li);

	if(x != 6.0Li){
		assert(0);
	}

	return 0;
}
