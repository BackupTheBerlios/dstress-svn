
class MyClass{
	int value;
}

int main(){
	MyClass array[3];
	array[0]=new MyClass(); array[0].value=3;
	array[1]=new MyClass(); array[1].value=6;
	array[2]=new MyClass(); array[2].value=9;
	int count=0;
	assert(count==0);
	foreach(int index, MyClass obj; array){
		assert((index+1)*3==obj.value);
		count++;
	}
	assert(count==3);
	return 0;
}
