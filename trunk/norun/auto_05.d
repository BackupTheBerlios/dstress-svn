// $HeadURL$
// $Date$
// $Author$

// @author@	Lionello Lunesu <lio@lunesu.removethis.com>
// @date@	2005-03-25
// @uri@	news:d2175a$2u8h$1@digitaldaemon.com

// __DSTRESS_ELINE__ 27

module dstress.norun.auto_05;

class AutoClass{
	int test() {
		return 0;
	}
}

AutoClass b;

void autotest(){
	auto AutoClass c = new AutoClass();
 	b = c;   // this should be forbidden?
}

int main(){
	autotest();
 	b.test();   // "access violation"
 	return 1;
}