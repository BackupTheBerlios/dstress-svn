// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_C;

struct S(real f){
	real cf = f;
}

int main(){
	const real a = 1.2;
	S!(a)* sa = new S!(a);
	assert(sa.cf == a);

	const real b = -0.8;
	S!(b)* sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
