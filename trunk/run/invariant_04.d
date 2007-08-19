// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-10-22
// @uri@	news:clbr09$uc6$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2140

// invariant for structs allowed since dmd-0.119

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.invariant_04;

bool tested;

struct MyStruct{
	int i=1;

	void test(){
	}

	invariant(){
		if(1 != i){
			assert(0);
		}
		tested=true;
	}
}

int main(){
	MyStruct s;
	assert(!tested);
	s.test();
	if(!tested){
		assert(0);
	}
	return 0;
}
