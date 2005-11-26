// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_L;

struct S(ireal f){
	ireal cf = f;
}

int main(){
	const ireal a = 1.2i;
	auto sa = new S!(a);
	assert(sa.cf == a);

	const ireal b = -0.8i;
	auto sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
