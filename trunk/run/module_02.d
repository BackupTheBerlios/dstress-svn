// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas@kuehne.thisisspam.cn>
// @date@	2005-02-12
// @uri@	news:cujja4$5ri$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2952

/*module dstress.run.module_02;*/

int i;

int main(){
	assert(module_02.i==0);
	module_02.i++;
	assert(module_02.i==1);
	return 0;
}

