// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-12-03
// @uri@	news:7bb963-6ri.ln1@birke.kuehne.cn

module dstress.run.a.array_initialization_20_B;

typedef byte X = 4;

int main(){
	X[] array;
	array.length = 2;
	array[] = 3;
	array.length = 3;

	assert(array[0] == 3);
	assert(array[1] == 3);
	assert(array[2] == 4);

	return 0;
}