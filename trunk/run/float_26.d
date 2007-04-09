// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3624

module dstress.run.float_26;

int main(){
	float i= 1f;
	assert(i==1f);
	i=0f / 0f;
	assert(i !<>= i.nan);
	return 0;
}

