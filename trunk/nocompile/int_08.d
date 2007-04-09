// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3624

// __DSTRESS_ELINE__ 14

module dstress.nocompile.int_08;

int main(){
	int i=0/0;
	return 0;
}

