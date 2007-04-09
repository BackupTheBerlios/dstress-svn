// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-05-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3900

module dstress.run.const_20_A;

int main(){
	const float d = -3.0f;
	int i = cast(int)d;
	assert(-3 == i);
	return 0;
}

