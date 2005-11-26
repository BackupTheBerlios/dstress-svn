// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_21_D;

template T(char[] c){
	auto x = c;
}

int main(){
	assert(T!("abc").x == "abc");
	assert(T!(null).x is null);

	return 0;
}
