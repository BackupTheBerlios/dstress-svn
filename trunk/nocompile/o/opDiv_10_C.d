// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-05-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3949

// __DSTRESS_ELINE__ 14

module dstress.nocompile.o.opDiv_10_C;

int main(){
	ireal a = 4.0Li / 2.0Li;
	assert(a==2.0Li);
	return 0;
}
