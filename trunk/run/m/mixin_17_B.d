// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-02-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6360

module dstress.run.m.mixin_17_B;

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

	if(i != 0){
		assert(0);
	}

	return 0;
}
