// $HeadURL$
// $Date$
// $Author$

// @author@	Sterling Christensen <sterlingchristensen@hotmail.com>
// @date@	2006-06-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=7818

module dstress.run.b.bug_cgcod_1677_E;

int foo(char[] s){
	short shift = s.length * 4;
	int answer;

	for (size_t i = 0; i < s.length; i++){
		answer = s[i] << shift;
	}

	return answer;
}

int main(){
	if(foo("\u0001") != 16){
		assert(0);
	}

	return 0;
}
