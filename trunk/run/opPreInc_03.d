// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3713

module dstress.run.opPreInc_03;

void dummy(...){
}

int main() {
	short x = 9;
	dummy(x);
	int y=++x;
	assert(y==10);
	assert(x==10);
	return 0;
}

