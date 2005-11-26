// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_05_P;

struct S(wchar[] c){
	auto x = c;
}

int main(){
	S!("abc")* a = new S!("abc");
	assert(a.x == "abc");

	S!(null)* b = new S!(null);
	assert(b.x is null);

	return 0;
}
