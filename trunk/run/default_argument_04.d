// $HeadURL$
// $Date$
// $Author$

module dstress.run.default_argument_04;

int test(char[] a="abc"){
	if(a is null){
		return -1;
	}else{
		return a.length;
	}
}

int main(){
	assert(test()==3);
	assert(test("")==0);
	assert(test(null)==-1);
	assert(test("ab")==2);
	return 0;
}
