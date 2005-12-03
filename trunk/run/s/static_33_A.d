// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.static_33_A;

deprecated x = 4.0;

int main(){
	assert(typeid(typeof(x)).toString() == "double");
	
	return 0;
}
