// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-08-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4798

// __DSTRESS_ELINE__ 17

module dstress.nocompile.v.void_02_A;

void dummy(...){
}

void main(){
	dummy(void.init);
}