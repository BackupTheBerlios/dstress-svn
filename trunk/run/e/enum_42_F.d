// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-04
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5307

module dstress.run.e.enum_42_F;

enum E : uint{
	A = 1,
	B = 2,
	C = 3
}

int main(){
	uint[] array;

	E e = E.B;

	array ~= e;

	assert(array.length==1);
	assert(array[0]==E.B);

	return 0;
}
