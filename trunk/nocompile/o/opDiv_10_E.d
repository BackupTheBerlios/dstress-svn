// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-05-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3949

// __DSTRESS_ELINE__ 16

module dstress.nocompile.o.opDiv_10_E;

int main(){
	idouble a = 4.0i;
	idouble b = 2.0i;
	a = a / b;
	assert(a==2.0i);
	return 0;
}
