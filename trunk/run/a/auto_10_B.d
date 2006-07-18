// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.auto_10_B;

int main(){
	auto x = 4;
	
	if(typeid(typeof(x)).toString() != "int"){
		assert(0);
	}
	
	return 0;
}
