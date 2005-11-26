// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_20_F;

template T(ireal f){
	ireal cf = f;
}

int main(){
	const ireal a = 1.2i;
	assert(T!(a).cf == a);

	const ireal b = -0.8i;
	assert(T!(b).cf == b);

	return 0;
}
