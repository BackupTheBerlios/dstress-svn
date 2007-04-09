// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3624

module dstress.run.float_25;

int main(){
	float a=0f;
	float i=1f;
	assert(i==1f);
	i=a/a;
	assert(i !<>= i.nan);
	return 0;
}

