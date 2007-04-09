// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Miller <chris@dprogramming.com>
// @date@	2006-02-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6332

module dstress.run.t.typeid_88_C;

int main(){
	if(typeid(int*) != typeid(short*)){
		return 0;
	}
	assert(0);
}
