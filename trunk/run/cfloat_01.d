// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-04-26
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3825

module dstress.run.cfloat_01;

int main(){
	cfloat c = 27Fi + 0.0F;
	assert(c.re==0.0F);
	assert(c.im==27.0F);
	return 0;
}
