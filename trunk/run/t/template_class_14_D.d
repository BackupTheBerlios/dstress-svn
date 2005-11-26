// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_14_D;

class C(dchar[] c){
	dchar[] x = c;
}

int main(){
	auto a = new C!("abc"d);
	assert(a.x == "abc"d);

	auto b = new C!(null);
	assert(b.x is null);

	return 0;
}
