// $HeadURL$
// $Date$
// $Author$

module dstress.run.foreach_15;

int main(){
	char[3] array;
	array[0]='a';
	array[1]='b';
	array[2]='c';
	int count=0;
	assert(count==0);
	assert(array[0]=='a');
	assert(array[1]=='b');
	assert(array[2]=='c');
	foreach(ref char value; array){
		count++;
		value++;
	}
	assert(count==3);
	assert(array[0]=='b');
	assert(array[1]=='c');
	assert(array[2]=='d');
	return 0;
}
