// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-12-03
// @uri@	news:7bb963-6ri.ln1@birke.kuehne.cn

module dstress.run.a.array_initialization_20_D;

typedef double X = 4.0;

int main(){
	X three = cast(X) 3.0;
	X four = cast(X) 4.0;
	
	X[] array;
	array.length = 2;
	array[] = three;
	array.length = 3;


	assert(array[0] == three);
	assert(array[1] == three);
	assert(array[2] == four);

	return 0;
}
