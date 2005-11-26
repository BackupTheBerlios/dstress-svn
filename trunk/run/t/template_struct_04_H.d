// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_H;

struct S(double f){
	double cf = f;
}

int main(){
	const double a = 1.2;
	auto sa = new S!(a);
	assert(sa.cf == a);

	const double b = -0.8;
	auto sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
