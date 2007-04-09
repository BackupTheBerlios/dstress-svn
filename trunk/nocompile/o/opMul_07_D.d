// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-05-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3949

// __DSTRESS_ELINE__ 16

module dstress.nocompile.o.opMul_07_D;

int main(){
	ifloat a = 4.0fi;
	ifloat b = 2.0fi;
	a = a * b;
	assert(a==8.0fi);
	return 0;
}
