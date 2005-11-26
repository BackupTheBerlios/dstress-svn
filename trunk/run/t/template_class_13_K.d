// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-26
// @uri@	news:sd7l53-p6d.ln1@birke.kuehne.cn

module dstress.run.t.template_class_13_K;

class C(ifloat f){
	ifloat cf = f;
}

int main(){
	const ifloat a = 1.2i;
	auto sa = new C!(a);
	assert(sa.cf == a);

	return 0;
}
