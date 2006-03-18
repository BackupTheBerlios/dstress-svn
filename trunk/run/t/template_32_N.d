// $HeadUR$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.t.template_32_N;

template sum(ifloat x){
	static if (x <= 1.0fi){
		const ifloat sum = x;
	}else{
		const ifloat sum = x + sum!(x - 1.0fi);
	}
}

int main(){
	ifloat x = sum!(2.0fi);

	if(x != 3.0fi){
		assert(0);
	}

	return 0;
}
