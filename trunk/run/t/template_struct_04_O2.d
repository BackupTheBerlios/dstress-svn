// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_O2;

struct S(cfloat f){
	cfloat cf = f;
}

int main(){
	const cfloat a = 1.2f + 2.1fi;
	S!(a)* sa = new S!(a);
	assert(sa.cf == a);

	const cfloat b = -0.8f - 0.1fi;
	S!(b) sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
