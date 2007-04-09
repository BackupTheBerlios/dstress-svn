// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

// __DSTRESS_ELINE__ 15

module dstress.nocompile.a.arrayOp_01;

void main() {
	static int[] x = [ 3, 4, 6 ];
	int[] z = x[] + 8;
}
