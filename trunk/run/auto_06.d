// $HeadURL$
// $Date$
// $Author$

module dstress.run.auto_06;

int status;

auto class A{
	int cond;

	this(int cond){
		this.cond=cond;
	}

	~this(){
		assert(status==cond);
		status--;
	}
}

void test(){
	auto A a = new A(-1);
	auto A b = new A(0);
}

int main(){
	test();
	assert(status==-2);
	return 0;
}
