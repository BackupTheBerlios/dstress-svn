// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3713

module dstress.run.opMulAssign_09;

void dummy(...){
}

int main() {
	float x = 3f;
	dummy(x);
	float y=2;
	y*=x;
	assert(y==6f);
	assert(x==3f);
	return 0;
}

