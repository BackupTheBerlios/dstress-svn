// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <kevinbealer@gmail.com>
// @date@	2007-02-17
// @uri@	http://www.digitalmars.com/webnews/newsgroups.php?group=digitalmars.D&article_id=49033
// @desc@	Re: odd issue in 1.006

module dstress.run.i.interpret_03_A;

int bar(char[] A){
	int v;

	for(int i = 0; i < A.length; i++) {
		if (A[i] != ' ') {
			v += A.length;
		}
	}

	return v;
}

int main(){
	const int foo = bar("a b c d");
	if(7 * 4 != foo){
		assert(0);
	}

	return 0;
}

