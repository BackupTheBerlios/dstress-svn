// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3713

module dstress.run.opPreInc_10;

void dummy(...){
}

int main() {
	double x = 9;
	dummy(x);
	double y=++x;
	assert(y==10);
	assert(x==10);
	return 0;
}

