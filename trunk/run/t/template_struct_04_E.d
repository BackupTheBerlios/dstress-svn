// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_E;

struct S(idouble f){
	idouble cf = f;
}

int main(){
	const idouble a = 1.2i;
	S!(a)* sa = new S!(a);
	assert(sa.cf == a);

	const idouble b = -0.8i;
	S!(b)* sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
