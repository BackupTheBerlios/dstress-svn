// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.c.const_36_D;

struct T(float r){
	const z = r;
}

int main(){
	auto x = T!(2).z;

	static assert(is(x == float));

	if(x != 2.0f){
		assert(0);
	}

	return 0;
}
