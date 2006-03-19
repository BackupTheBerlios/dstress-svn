// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_M2;

struct S(cfloat f){
	cfloat cf = f;
}

int main(){
	const cfloat a = 1.2f + 2.1fi;
	S!(a) sa;
	assert(sa.cf == a);

	const cfloat b = -0.8f - 0.1fi;
	S!(b) sb;
	assert(sb.cf == b);
	
	return 0;
}
