
int main(){
	int array[10];
	int test;
	assert(test==0);
	foreach(int value; array){
		test++;
	}
	assert(test==10);
	return 0;
}
