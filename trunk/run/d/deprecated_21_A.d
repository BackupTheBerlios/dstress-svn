// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ -d

module dstress.run.d.deprecated_21_A;

deprecated x = 4.0;

int main(){
	if(typeid(typeof(x)).toString() != "double"){
		assert(0);
	}

	return 0;
}
