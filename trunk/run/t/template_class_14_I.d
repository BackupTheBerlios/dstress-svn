// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_14_I;

class C(wchar[] c){
	wchar[] x = c;
}

int main(){
	C!("abc"w) a = new C!("abc"w);
	assert(a.x == "abc"w);

	C!(null) b = new C!(null);
	assert(b.x is null);

	return 0;
}
