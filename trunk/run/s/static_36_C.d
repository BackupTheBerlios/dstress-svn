// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-03-18
// @uri@	news:dvgq34$22hv$1@digitaldaemon.com

module dstress.run.c.static_36_C;

static z = r;
const double r = 2.0;

int main(){
	auto x = z;

	static assert(is(x == double));

	if(x != 2.0){
		assert(0);
	}

	return 0;
}
