// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-10-26
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5215

// __DSTRESS_DFLAGS__ run/i/import_10_B.d

module /*dstress.*/run.i.import_10_A;
import /*dstress.*/run.i.import_10_B;

const uint len = 42;

int main(){
	assert(array.length == 42);
	return 0;
}

