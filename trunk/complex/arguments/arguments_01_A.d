// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <Kevin_member@pathlink.com>
// @date@	2006-03-13
// @uri@	news:dv37ip$1v97$1@digitaldaemon.com

module /*dstress.*/complex.arguments.arguments_01_A;

import /*dstress.*/complex.arguments.arguments_01_X;

int main(){
	if(7 != foo!(3)){
		assert(0);
	}
	
	return 0;
}
