// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-10-26
// @uri@	news:djot9m$5sb$1@digitaldaemon.com

module dstress.run.a.auto_11_B;

class C{
	int value() {
		return 5;
	}
}

int main(){
	C c = new C();
	
	auto i = c.value();

	assert(i == 5);
	
	return 0;
}




