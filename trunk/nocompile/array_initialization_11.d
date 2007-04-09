// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3688

// __DSTRESS_ELINE__ 14

module dstress.nocompile.array_initialization_11;

int main(){
	char a[int.max/32]= [0];
	return 0;
}

