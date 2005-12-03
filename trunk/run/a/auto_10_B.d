// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.auto_10_B;

int main(){
	auto x = 4;
	
	assert(typeid(typeof(x)).toString() == "int");
	
	return 0;
}
