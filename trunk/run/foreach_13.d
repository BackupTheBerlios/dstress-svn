// $HeadURL$
// $Date$
// $Author$

module dstress.run.foreach_13;

int main(){
	char[] array="abc".dup;
	int count=0;
	assert(count==0);
	assert(array[0]=='a');
	assert(array[1]=='b');
	assert(array[2]=='c');
	foreach(inout char value; array){
		count++;
		value++;
	}
	assert(count==3);
	assert(array[0]=='b');
	assert(array[1]=='c');
	assert(array[2]=='d');
	return 0;
}
