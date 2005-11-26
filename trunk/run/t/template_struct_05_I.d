// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_05_I;

struct S(dchar[] c){
	dchar[] x = c;
}

int main(){
	S!("abc")* a = new S!("abc");
	assert(a.x == "abc");

	S!(null)* b = new S!(null);
	assert(b.x is null);

	return 0;
}
