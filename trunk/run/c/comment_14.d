// $HeadURL$
// $Date$
// $Author$

// @author@	clayasaurus <clayasaurus@gmail.com>
// @date@	2005-10-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5111

module dstress.run.c.comment_14;

/**
	a
*/
enum{
	X
}

int main(){
	if(X != 0){
		assert(0);
	}
	return 0;
}
