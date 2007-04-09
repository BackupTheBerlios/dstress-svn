// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander B. <carlos8294@msn.com>
// @date@	2004-08-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1428

module dstress.run.bool_05;

class MyClass{
	bool check;
}

int main(){
	MyClass c = new MyClass();
	c.check = 0 != 0;
	return 0;
}
