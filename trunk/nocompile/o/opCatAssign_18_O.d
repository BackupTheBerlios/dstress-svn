// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5305

// __DSTRESS_ELINE__ 21

module dstress.nocompile.o.opCatAssign_18_O;

class X{
	int a;
}

void main(){
	X x;
	int a;
	
	x ~= a;
}
