// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3713

module dstress.run.opPreInc_09;

void dummy(...){
}

int main() {
	float x = 9f;
	dummy(x);
	float y=++x;
	assert(y==10f);
	assert(x==10f);
	return 0;
}

