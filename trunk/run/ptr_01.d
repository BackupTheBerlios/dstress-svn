// $HeadURL$
// $Date$
// Author$

module dstress.run.ptr_01;

int main(){
	Object[3] array;
	Object a = new Object();
	Object b = new Object();
	Object c = new Object();

	array[1]=b;
	array[2]=c;
	array[0]=a;

	assert(*array.ptr == a);

	return 0;
}
