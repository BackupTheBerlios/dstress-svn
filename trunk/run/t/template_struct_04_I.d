// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_I;

struct S(real f){
	real cf = f;
}

int main(){
	const real a = 1.2;
	auto sa = new S!(a);
	assert(sa.cf == a);

	const real b = -0.8;
	auto sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
