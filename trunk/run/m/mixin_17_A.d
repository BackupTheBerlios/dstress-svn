// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-02-24
// @uri@	news:dtnn0o$b5q$1@digitaldaemon.com

module dstress.run.m.mixin_17_A;

int status;

template mix(){
	int i;

	void test(){
		status = i;
	}
}

int main(){
	assert(status == 0);

	mixin mix!();

	test();

	if(status != 0){
		assert(0);
	}

	return 0;
}
