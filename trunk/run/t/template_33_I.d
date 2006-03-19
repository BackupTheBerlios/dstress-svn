// $HeadUR$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.t.template_33_I;

template sum(cfloat x){
	static if (x.re <= 1.0f){
		const cfloat sum = x;
	}else{
		const cfloat sum = x + sum!(x - 1.0f);
	}
}

int main(){
	cfloat x = sum!(3.0f + 0.0fi);

	if(x != 6.0f + 0.0fi){
		assert(0);
	}

	return 0;
}
