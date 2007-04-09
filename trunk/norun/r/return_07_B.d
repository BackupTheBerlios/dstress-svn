// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <chris@dprogramming.com>
// @date@	2005-07-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4533

// __DSTRESS_ELINE__ 13

module dstress.norun.r.return_07_B;

int foo(){
}

int main(){
	foo();
	return 0;
}
