// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-12-04
// @uri@	news:dmus5e$11jp$1@digitaldaemon.com

module dstress.run.v.variadic_argument_11_D;

class Testing(int i){
	this(int a, ...){
	}
}

int main(){
	auto test = new Testing!(0)(1, 2, 3);
	assert(test);
	return 0;
}

