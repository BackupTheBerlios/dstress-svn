// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-10-26
// @uri@	news:djot9m$5sb$1@digitaldaemon.com

module dstress.run.a.auto_11_A;

int value() {
	return 5;
}

int main(){
	auto i = value();

	if(i != 5){
		assert(0);
	}
	
	return 0;
}




