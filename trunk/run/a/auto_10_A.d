// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.auto_10_A;

int main(){
	auto x = 4.0;
	
	assert(typeid(typeof(x)).toString() == "double");
	
	return 0;
}
