// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_P;

struct S(creal f){
	auto cf = f;
}

int main(){
	const creal a = 1.2L + 2.1Li;
	S!(a)* sa = new S!(a);
	assert(sa.cf == a);

	const creal b = -0.8L - 0.1Li;
	S!(b) sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
