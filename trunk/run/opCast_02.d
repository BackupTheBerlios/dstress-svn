// @author@	Carlos Santander B. <carlos8294@msn.com>
// @date@	2004-09-18
// @uri@	news://cihrpp$9gt$1@digitaldeamon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:1865

module dstress.run.opCast_02;


class Parent{
	void test(int i){
	}

	int opCast(){
		return 0;
	}
}

class Child : Parent{
}

int main(){
	(new Child()).test=2;
	return 0;
}
