// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3688

// __DSTRESS_ELINE__ 14

module dstress.nocompile.array_initialization_08;

int main(){
	static char a[int.max/32];
	return 0;
}

