// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_F;

struct S(ireal f){
	ireal cf = f;
}

int main(){
	const ireal a = 1.2i;
	S!(a)* sa = new S!(a);
	assert(sa.cf == a);

	const ireal b = -0.8i;
	S!(b)* sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
