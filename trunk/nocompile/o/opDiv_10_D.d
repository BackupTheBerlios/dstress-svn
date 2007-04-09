// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-05-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3949

// __DSTRESS_ELINE__ 16

module dstress.run.o.opDiv_10_D;

int main(){
	ifloat a = 4.0fi;
	ifloat b = 2.0fi;
	a = a / b;
	assert(a==2.0fi);
	return 0;
}
