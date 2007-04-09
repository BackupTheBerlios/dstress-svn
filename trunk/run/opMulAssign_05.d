// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3713

module dstress.run.opMulAssign_05;

void dummy(...){
}

int main() {
	int x = 3;
	dummy(x);
	int y=2;
	y*=x;
	assert(y==6);
	assert(x==3);
	return 0;
}

