// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <ben.hinkle@gmail.com>
// @date@	2005-03-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3356

module dstress.run.associative_array_14;

int main() {
	int[creal] x;
	creal d=22.0L+0.0Li;
	x[d] = 44;
	if(44 != x[d]){
		assert(0);
	}
	return 0;
}
