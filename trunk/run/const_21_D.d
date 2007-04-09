// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-05-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3900

module dstress.run.const_21_D;

int main(){
	double d = 3.0;
	int i = cast(int)d;
	assert(3 == i);
	return 0;
}

