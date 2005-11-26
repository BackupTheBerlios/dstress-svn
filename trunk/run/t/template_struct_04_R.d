// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_R;

struct S(creal f){
	auto cf = f;
}

int main(){
	const creal a = 1.2 + 2.1i;
	auto sa = new S!(a);
	assert(sa.cf == a);

	const creal b = -0.8 - 0.1i;
	auto sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
