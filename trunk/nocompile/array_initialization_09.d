// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3688

// __DSTESS_ELINE__ 14

module dstress.nocompile.array_initialization_09;

int main(){
	version(X86){char a[int.max+1];}else{static assert(0);}
	return 0;
}

