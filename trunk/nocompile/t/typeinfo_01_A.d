// $HeadURL$
// $Date$
// $Author$

// @author@	Wang Zhen <nehzgnaw@gmail.com>
// @date@	2006-02-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6306

// __DSTRESS_ELINE__ 17

module dstress.nocompile.t.typeinfo_01_A;

struct S{
}

void main(){
	S.typeinfo;
}
