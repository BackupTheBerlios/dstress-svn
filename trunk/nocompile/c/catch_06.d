// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-02-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6297

// Porting: C#

// __DSTRESS_ELINE__ 17

module dstress.nocompile.c.catch_06;

void main(){
	try{
	}catch(Object){
	}
}
