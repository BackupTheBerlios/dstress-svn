// $HeadURL$
// $Date$
// $Author$

// @author@	<jmjmak@utu.invalid.fi>
// @date@	2005-08-31
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4903

// __DSTRESS_ELINE__ 27

module dstress.nocompile.o.opCmp_06_F;

interface Interface{
	int test(int);
}

class Class : Interface{
	int test(int i){
		return ++i;
	}
}

void main(){
	Interface a = new Class();
	Interface b = new Class();

	assert(a <= b);
}