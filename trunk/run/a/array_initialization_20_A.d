// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-12-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5731

module dstress.run.a.array_initialization_20_A;

typedef byte X = 4;

int main(){
	X[] array;
	array.length = 1;

	if(array[0] != 4){
		assert(0);
	}

	return 0;
}
