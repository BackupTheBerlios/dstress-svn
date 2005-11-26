// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_20_E;

template T(idouble f){
	idouble cf = f;
}

int main(){
	const idouble a = 1.2i;
	assert(T!(a).cf == a);

	const idouble b = -0.8i;
	assert(T!(b).cf == b);

	return 0;
}
