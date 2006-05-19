// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.static_33_A;

static x = 4.0;

int main(){
	if(typeid(typeof(x)).toString() != "double"){
		assert(0);
	}
	
	return 0;
}
