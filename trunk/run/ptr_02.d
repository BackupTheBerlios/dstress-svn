// $HeadURL$
// $Date$
// $Author$

module dstress.run.ptr_02;

int main(){
	Object[] array;
	array.length=3;

	Object a = new Object();
	Object b = new Object();
	Object c = new Object();

	array[1]=b;
	array[2]=c;
	array[0]=a;

	assert(*array.ptr == a);

	return 0;
}
