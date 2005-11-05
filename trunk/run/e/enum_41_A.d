// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-04
// @uri@	news:th-92A9AC784C1CE3592F06EC49@birke.kuehne.cn

module dstress.run.e.enum_41_A;

enum E : byte{
	A = 1,
	B = 2,
	C = 3
}

int main(){
	byte[] array;
	
	E e = E.B;
	
	array = array ~ e;
	
	assert(array.length==1);
	assert(array[0]==E.B);
	
	return 0;
}
