// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_B;

struct S(double f){
	double cf = f;
}

int main(){
	const double a = 1.2;
	S!(a)* sa = new S!(a);
	assert(sa.cf == a);

	const double b = -0.8;
	S!(b)* sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
