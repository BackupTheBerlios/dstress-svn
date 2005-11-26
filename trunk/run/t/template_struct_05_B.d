// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_05_B;

struct S(char[] c){
	auto x = c;
}

int main(){
	S!("abc") a;
	assert(a.x == "abc");

	S!(null) b;
	assert(b.x is null);

	return 0;
}
