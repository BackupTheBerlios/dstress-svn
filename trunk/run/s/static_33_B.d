// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.static_33_B;

static x = 4;

int main(){
	if(typeid(typeof(x)).toString() != "int"){
		assert(0);
	}
	
	return 0;
}
