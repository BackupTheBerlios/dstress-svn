// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-26
// @uri@	news:62al53-oh.ln1@birke.kuehne.cn

module dstress.run.a.auto_12_A;

struct S{
	int i;
}

int main(){
	auto s = new S;
	if(s.i != 0){
		assert(0);
	}

	return 0;
}

