// $HeadURL$
// $Date$
// $Author$

module dstress.run.default_argument_03;

int test(bool b=1){
	return b;
}

int main(){
	assert(test()==1);
	assert(test(true)==1);
	assert(test(false)==0);
	return 0;
}
