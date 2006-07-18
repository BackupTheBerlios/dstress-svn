// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.auto_10_A;

int main(){
	auto x = 4.0;
	
	if(typeid(typeof(x)).toString() != "double"){
		assert(0);
	}
	
	return 0;
}
