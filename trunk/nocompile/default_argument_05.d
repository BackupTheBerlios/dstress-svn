// $HeadURL$
// $Date$
// $Author$

// @author@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2004-11-15
// @uri@	news:cnaidd$2rnr$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2275

// __DSTRESS_ELINE__ 16

module dstress.nocompile.default_argument_05;

template Template(int L){
	int i;
	void test(int b = Template.i) {
	}
}

int main(){
	mixin Template!(10);
	return 0;
}
