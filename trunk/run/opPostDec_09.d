// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3713

module dstress.run.opPostDec_09;

void dummy(...){
}

int main() {
	float x = 9f;
	dummy(x);
	float y=x--;
	assert(y==9f);
	assert(x==8f);
	return 0;
}

