// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3691

module dstress.run.enum_14;

int main(){
	enum E{
		a=-1
	}

	assert(E.min==-1);
	assert(E.max==-1);
	return 0;
}
