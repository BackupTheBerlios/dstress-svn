// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_14_E;

class C(dchar[] c){
	dchar[] x = c;
}

int main(){
	C!("abc"d) a = new C!("abc"d);
	assert(a.x == "abc"d);

	C!(null) b = new C!(null);
	assert(b.x is null);

	return 0;
}
