// $HeadURL$
// $Date$
// $Author$

// @author@	Victor Nakoryakov <Victor_member@pathlink.com>
// @date@	2006-03-11
// @uri@	news:duukb8$2vvd$1@digitaldaemon.com

module dstress.run.t.template_31_D;

template C(int x, T){
	T C(){
		return x;
	}
}

int main(){
	const int a = 3;

	auto b = C!(a, typeof(a))();

	if(!is(typeof(a) : typeof(b))){
		assert(0);
	}

	if(!is(typeof(b) : typeof(a))){
		assert(0);
	}

	if(a != b){
		assert(0);
	}
	
	return 0;
}
