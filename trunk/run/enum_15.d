// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3691

module dstress.run.enum_15;

int main(){
	enum E{
		a=1,
		b=-1,
		c=3,
		d=2
	}

	assert(E.min==-1);
	assert(E.max==3);
	return 0;
}
