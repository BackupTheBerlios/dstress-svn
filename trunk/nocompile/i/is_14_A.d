// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

// __DSTRESS_ELINE__ 14

module dstress.nocompile.i.is_14_A;

void main(){
	static if(is(x()){
	}
}
