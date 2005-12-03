// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.static_33_B;

deprecated x = 4;

int main(){
	assert(typeid(typeof(x)).toString() == "int");
	
	return 0;
}
