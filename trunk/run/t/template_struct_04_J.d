// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_J;

struct S(ifloat f){
	ifloat cf = f;
}

int main(){
	const ifloat a = 1.2i;
	auto sa = new S!(a);
	assert(sa.cf == a);

	const ifloat b = -0.8i;
	auto sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
