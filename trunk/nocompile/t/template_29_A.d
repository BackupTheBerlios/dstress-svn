// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <BCS_member@pathlink.com>
// @date@	2006-02-16
// @uri@	news:dt2eo3$tea$1@digitaldaemon.com
// @desc@	Internal error: e2ir.c 736

// __DSTRESS_ELINE__ 15

module dstress.nocompile.t.template_29_A;

template foo(int i){
	const int bar = foo!(i).bar;
}

int main(){
	return foo!(1).bar;
}

