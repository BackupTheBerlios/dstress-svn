// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.a.auto_17_B;

auto z = r;
const real r = 2.0L;

int main(){
	auto x = z;

	static assert(is(x == real));

	if(x != 2.0L){
		assert(0);
	}

	return 0;
}
