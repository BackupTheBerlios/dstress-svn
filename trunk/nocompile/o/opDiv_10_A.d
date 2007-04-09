// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-05-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3949

// __DSTRESS_ELINE__ 14

module dstress.nocompile.o.opDiv_10_A;

int main(){
	ifloat a = 4.0fi / 2.0fi;
	assert(a==2.0fi);
	return 0;
}
