// $HeadURL$
// $Date$
// $Author$

module dstress.run.return_01;

int dummyJob;
int dummy(){
	return ++dummyJob;
}

void test(){
	return dummy();
}

int main(){
	test();
	return dummyJob-1;
}
