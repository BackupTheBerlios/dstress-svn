// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ -d

module dstress.run.d.deprecated_21_B;

deprecated x = 4;

int main(){
	if(typeid(typeof(x)).toString() != "int"){
		assert(0);
	}

	return 0;
}
