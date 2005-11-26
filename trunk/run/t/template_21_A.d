// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_21_A;

template T(char[] c){
	char[] x = c;
}

int main(){
	assert(T!("abc").x == "abc");
	assert(T!(null).x is null);

	return 0;
}
