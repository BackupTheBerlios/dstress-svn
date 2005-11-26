// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_05_Q;

struct S(wchar[] c){
	wchar[] x = c;
}

int main(){
	auto a = new S!("abc");
	assert(a.x == "abc");

	auto b = new S!(null);
	assert(b.x is null);

	return 0;
}
