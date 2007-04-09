// $HeadURL$
// $Date$
// $Author$

// @author@	Mike Parker <aldacron71@yahoo.com>
// @date@	2005-04-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3814

module dstress.run.private_07;

template T(){
	private int x;
}

class MyClass{
	mixin T;
}

int main(){
	MyClass c=new MyClass;
	c.x = 1;
	return 0;
}

