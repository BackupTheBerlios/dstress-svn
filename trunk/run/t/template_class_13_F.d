// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-26
// @uri@	news:sd7l53-p6d.ln1@birke.kuehne.cn

module dstress.run.t.template_class_13_F;

class C(double f){
	double cf = f;
}

int main(){
	const double a = 1.2;
	auto sa = new C!(a);
	assert(sa.cf == a);

	return 0;
}
