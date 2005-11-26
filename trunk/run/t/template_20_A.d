// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_20_A;

template T(float f){
	float cf = f;
}

int main(){
	const float a = 1.2;
	assert(T!(a).cf == a);

	const float b = -0.8;
	assert(T!(b).cf == b);

	return 0;
}
