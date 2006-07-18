// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-26
// @uri@	news:62al53-oh.ln1@birke.kuehne.cn

module dstress.run.a.auto_12_B;

struct S{
	int i;
}

int main(){
	S* s = new S;
	if(s.i != 0){
		assert(0);
	}

	return 0;
}

