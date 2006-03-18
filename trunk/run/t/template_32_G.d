// $HeadUR$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.t.template_32_G;

template sum(float x){
	static if (x <= 1.0f){
		const float sum = x;
	}else{
		const float sum = x + sum!(x - 1.0f);
	}
}

int main(){
	float x = sum!(3.0f);

	if(x != 6.0f){
		assert(0);
	}

	return 0;
}
