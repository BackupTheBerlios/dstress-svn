// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_14_C;

class C(char[] c){
	auto x = c;
}

int main(){
	auto a = new C!("abc");
	assert(a.x == "abc");

	auto b = new C!(null);
	assert(b.x is null);

	return 0;
}
