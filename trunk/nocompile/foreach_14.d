// $HeadURL$
// $Date$
// $Author$

// @author@ 	Tyro <ridimz_at@yahoo.dot.com>
// @date@	2004-09-22
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1897

// __DSTRESS_ELINE__ 15

module dstress.nocompile.foreach_14;

int main(){
	char[] array="abc";
	foreach(int index, char; array){
	}
	return 0;
}
