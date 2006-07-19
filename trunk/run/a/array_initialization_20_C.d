// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-12-03
// @uri@	news:7bb963-6ri.ln1@birke.kuehne.cn

module dstress.run.a.array_initialization_20_C;

typedef double X = 4.0;

int main(){
	X four = cast(X) 4.0;

	X[] array;
	array.length = 1;

	if(array[0] != four){
		assert(0);
	}

	return 0;
}
