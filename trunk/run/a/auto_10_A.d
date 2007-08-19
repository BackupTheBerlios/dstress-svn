// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.auto_10_A;

int main(){
	auto x = 4.0;

	if("double" != typeid(typeof(x)).toString()){
		assert(0);
	}

	return 0;
}
