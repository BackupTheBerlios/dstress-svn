// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_05_K;

struct S(dchar[] c){
	dchar[] x = c;
}

int main(){
	auto a = new S!("abc");
	assert(a.x == "abc");

	auto b = new S!(null);
	assert(b.x is null);

	return 0;
}
