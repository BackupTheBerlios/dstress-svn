// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-05-31
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4185
// @desc@	Internal error: ../ztc/cod1.c 2503

module dstress.run.o.opSlice_01_D;

int main(){
	short arr[4][2];

	arr[0][1]=true;

	arr[1..3] = arr[0];

	if(arr[0][0]){
		assert(0);
	}
	if(!arr[0][1]){
		assert(0);
	}
	if(arr[1][0]){
		assert(0);
	}
	if(!arr[1][1]){
		assert(0);
	}
	if(arr[2][0]){
		assert(0);
	}
	if(!arr[2][1]){
		assert(0);
	}
	if(arr[3][0]){
		assert(0);
	}
	if(arr[3][1]){
		assert(0);
	}

	return 0;
}

