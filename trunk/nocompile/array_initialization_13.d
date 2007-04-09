// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3689

// __DSTRESS_ELINE__ 14

module dstress.nocompile.array_initialization_13;

int main(){
	char a[1] = [int.max:0,1];
	return 0;
}

