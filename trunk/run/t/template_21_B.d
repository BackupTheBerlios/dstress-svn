// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_21_B;

template T(dchar[] c){
	dchar[] x = c;
}

int main(){
	assert(T!("abc").x == "abc");
	assert(T!(null).x is null);

	return 0;
}
