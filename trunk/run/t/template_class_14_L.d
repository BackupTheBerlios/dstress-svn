// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_14_L;

class C(wchar[] c){
	wchar[] x = c;
}

int main(){
	auto a = new C!("abc"w);
	assert(a.x == "abc"w);

	auto b = new C!(null);
	assert(b.x is null);

	return 0;
}
