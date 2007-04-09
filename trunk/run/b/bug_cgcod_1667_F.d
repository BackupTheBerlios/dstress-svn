// $HeadURL$
// $Date$
// $Author$

// @author@	Sterling Christensen <sterlingchristensen@hotmail.com>
// @date@	2006-06-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=7818

module dstress.run.b.bug_cgcod_1677_F;

int foo(char[] s){
	short shift = s.length * 3;
	int answer;

	foreach(char c; s){
		answer = c << shift;
	}

	return answer;
}

int main(){
	if(foo("\u0001") != 8){
		assert(0);
	}

	return 0;
}
