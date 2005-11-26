// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_05_C;

struct S(char[] c){
	char[] x = c;
}

int main(){
	S!("abc")* a = new S!("abc");
	assert(a.x == "abc");

	S!(null)* b = new S!(null);
	assert(b.x is null);

	return 0;
}
