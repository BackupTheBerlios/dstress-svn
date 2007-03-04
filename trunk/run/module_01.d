// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas@kuehne.thisisspam.cn>
// @date@	2005-02-12
// @uri@	news:cujja4$5ri$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2952

module dstress.run.module_01;

int i;

int main(){
	assert(dstress.run.module_01.i==0);
	dstress.run.module_01.i++;
	assert(dstress.run.module_01.i==1);
	return 0;
}

