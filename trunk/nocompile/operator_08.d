// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-08-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1303

// __DSTRESS_ELINE__ 22

module dstress.nocompile.operator_08;

class MyClass{
}

void test( ... ){
}

int main(){
	MyClass a = new MyClass();

	test ( a++ );
	return 0;
}
