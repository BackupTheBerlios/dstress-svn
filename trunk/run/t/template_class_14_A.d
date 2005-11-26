// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_14_A;

class C(char[] c){
	char[] x = c;
}

int main(){
	C!("abc") a = new C!("abc");
	assert(a.x == "abc");

	C!(null) b = new C!(null);
	assert(b.x is null);

	return 0;
}
