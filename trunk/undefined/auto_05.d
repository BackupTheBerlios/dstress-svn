// $HeadURL$
// $Date$
// $Author$

// @author@	Lionello Lunesu <lio@lunesu.removethis.com>
// @date@	2005-03-25
// @uri@	news:d2175a$2u8h$1@digitaldaemon.com

module dstress.undefined.auto_05;

class AutoClass{
	int test() {
		return 0;
	}
}

AutoClass b;

void autotest(){
	auto AutoClass c = new AutoClass();
 	b = c;
}

int main(){
	autotest();
 	b.test();   // *undefined*
 	return 0;
}
