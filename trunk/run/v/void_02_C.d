// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-08-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4798

module dstress.run.v.void_02_C;

void[10] array = void;

int main(){
	if(array.length != 10){
		assert(0);
	}
	return 0;
}
