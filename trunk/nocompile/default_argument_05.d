// $HeadURL$
// $Date$
// $Author$

// @uri@	news://cnaidd$2rnr$1@digitaldaemon.com
// @autor@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2004-11-15
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2275

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
