// $HeadUR$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.t.template_32_K;

template sum(int x){
	static if (x <= 1){
		const int sum = x;
	}else{
		const int sum = x + sum!(x - 1);
	}
}

int main(){
	int x = sum!(2);

	if(x != 3){
		assert(0);
	}

	return 0;
}
