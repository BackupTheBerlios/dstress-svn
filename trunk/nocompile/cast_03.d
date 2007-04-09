// $HeadURL$
// $Date$
// $Author$

// @author@	Walter <newshound@digitalmars.com>
// @date@	2004-08-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1376

// __DSTRESS_ELINE__ 27

module dstress.nocompile.cast_03;

interface MyInterface{
}

class MyClass : MyInterface {
}

int main(){
	MyClass c;
	c = new MyClass();
	
	MyInterface i;
	i = c;

	Object o;
	o = i;
	return 0;
}
