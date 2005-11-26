// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_21_C;

template T(wchar[] c){
	wchar[] x = c;
}

int main(){
	assert(T!("abc").x == "abc");
	assert(T!(null).x is null);

	return 0;
}
