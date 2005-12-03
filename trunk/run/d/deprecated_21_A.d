// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ -d

module dstress.run.d.deprecated_21_A;

deprecated x = 4.0;

int main(){
	assert(typeid(typeof(x)).toString() == "double");
	
	return 0;
}
