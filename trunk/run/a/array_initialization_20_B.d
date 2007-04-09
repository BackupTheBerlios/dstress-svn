// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-12-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5731

module dstress.run.a.array_initialization_20_B;

typedef byte X = 4;

int main(){
	X[] array;
	array.length = 2;
	array[] = 3;
	array.length = 3;

	if(array[0] != 3){
		assert(0);
	}

	if(array[1] != 3){
		assert(0);
	}

	if(array[2] != 4){
		assert(0);
	}

	return 0;
}
