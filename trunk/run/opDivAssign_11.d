// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3713

module dstress.run.opDivAssign_11;

void dummy(...){
}

int main() {
	real x = 2.0L;
	dummy(x);
	real y = 6.0L;
	y/=x;
	
	if(y != 3.0L){
		assert(0);
	}

	if(x != 2.0L){
		assert(0);
	}
	
	return 0;
}

