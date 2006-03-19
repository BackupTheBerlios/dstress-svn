// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_20_G;

template T(cfloat f){
	cfloat cf = f;
}

int main(){
	const cfloat a = 1.2f + 2.1fi;
	assert(T!(a).cf == a);

	const cfloat b = -0.8f - 0.1fi;
	assert(T!(b).cf == b);

	return 0;
}
