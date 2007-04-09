// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <ben.hinkle@gmail.com>
// @date@	2005-03-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3356

module dstress.run.associative_array_10;

int main() {
	int[real] x;
	real d=22;
	x[d] = 44;
	assert( x[d] == 44 );
	return 0;
}