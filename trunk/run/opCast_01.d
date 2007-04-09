// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander B. <carlos8294@msn.com>
// @date@	2004-09-18
// @uri@	news:cihrpp$9gt$1@digitaldeamon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1865

module dstress.run.opCast_01;

class Parent{
	void test(int i){
	}
}

class Child : Parent{
	int opCast(){
		return 0;
	}
}

int main(){
	(new Child()).test=2;
	return 0;
}
