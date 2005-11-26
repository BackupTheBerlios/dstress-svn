// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_struct_04_G;

struct S(float f){
	float cf = f;
}

int main(){
	const float a = 1.2;
	auto sa = new S!(a);
	assert(sa.cf == a);

	const float b = -0.8;
	auto sb = new S!(b);
	assert(sb.cf == b);
	
	return 0;
}
