// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.auto_10_B;

int main(){
	auto x = 4;

	if("int" != typeid(typeof(x)).toString()){
		assert(0);
	}

	return 0;
}
