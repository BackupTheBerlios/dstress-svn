// $HeadURL$
// $Date$
// $Author$

// @author@	Paul Runde <prunde@consolidated.net>
// @date@	2004-06-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=373

module dstress.run.odd_bug_01;

int[2] x = 3;
float y = 0.0f;

int main(){
	assert(x[0]==3);
	assert(x[1]==3);
	y = -100;
	assert(x[0]==3);
	assert(x[1]==3);
	return 0;
}
