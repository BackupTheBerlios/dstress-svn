// $HeadURL$
// $Date$
// $Author$

module dstress.run.memory_management_01;

void test(char[] arr){
	arr[1]++;
}

int main(){
	char[] c;
	c.length=3;
	c[0]='a';
	c[1]='C';
	c[2]='b';
	test(c);
	assert(c[0]=='a');
	assert(c[1]=='D');
	assert(c[2]=='b');
	return 0;
}
