module dstress.run.default_argument_03;

int test(bit b=1){
	return b;
}

int main(){
	assert(test()==1);
	assert(test(1)==1);
	assert(test(0)==0);
	return 0;
}
