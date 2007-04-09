// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3713

module dstress.run.opDivAssign_04;

void dummy(...){
}

int main() {
	ushort x = 2;
	dummy(x);
	int y=6;
	y/=x;
	assert(y==3);
	assert(x==2);
	return 0;
}

