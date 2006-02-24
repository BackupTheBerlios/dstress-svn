// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <BCS_member@pathlink.com>
// @date@	2006-02-16
// @uri@	news:dt2eo3$tea$1@digitaldaemon.com
// @desc@	Internal error: e2ir.c 736

module dstress.nocompile.t.template_29_B;

template foo(size_t i){
	static if(i > 0){
		const size_t bar = foo!(i-1).bar;
	}else{
		const size_t bar = 1;
	}
}

int main(){
	return foo!(size_t.max).bar;
}

