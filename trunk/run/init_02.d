// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-02-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3041

module dstress.run.init_022;

int main(){
	int[2] array;
	array[0]=1;
	array[1]=2;
	assert(array.init==int.init);
	assert(array[0]==1);
	assert(array[1]==2);
	return 0;
}
