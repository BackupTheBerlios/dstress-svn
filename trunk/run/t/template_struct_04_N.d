// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_N;

struct S(creal f){
	auto cf = f;
}

int main(){
	const creal a = 1.2 + 2.1i;
	S!(a) sa;
	assert(sa.cf == a);

	const creal b = -0.8 - 0.1i;
	S!(b) sb;
	assert(sb.cf == b);
	
	return 0;
}
