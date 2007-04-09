// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-02-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3062

module dstress.run.array_initialization_05;

int main(){
	int[] a;
	a.length=2;
	a[0]=5;
	a[1]=10;
	int[] b=a.init;
	assert(b.length==0);
	return 0;
}

