// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_14_K;

class C(wchar[] c){
	auto x = c;
}

int main(){
	auto a = new C!("abc"w);
	assert(a.x == "abc"w);

	auto b = new C!(null);
	assert(b.x is null);

	return 0;
}
