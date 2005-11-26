// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_D;

struct S(ifloat f){
	ifloat cf = f;
}

int main(){
	const ifloat a = 1.2i;
	S!(a)* sa = new S!(a);
	assert(sa.cf == a);

	const ifloat b = -0.8i;
	S!(b)* sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
