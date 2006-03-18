// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.c.const_36_B;

template T(double r){
	const T = r;
}

int main(){
	auto x = T!(2);

	static assert(is(x == double));

	if(x != 2.0){
		assert(0);
	}

	return 0;
}
