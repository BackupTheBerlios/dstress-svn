// $HeadURL$
// $Date$
// $Author$

// @author@	Unknown W. Brackets <unknown@simplemachines.org>
// @date@	2006-02-19
// @uri@	news:dtb7ee$gjq$1@digitaldaemon.com

module dstress.undefined.default_argument_10;

void test(out int i = 5){
	assert(i == 5);
}

int main(){
	int i;
	test(i);

	assert(i == 5);

	return 0;
}

