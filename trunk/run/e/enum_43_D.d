// $HeadURL$
// $Date$
// $Author$

// @author@	Tim Keating <Tim_member@pathlink.com>
// @date@	2006-01-27
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6099

module dstress.run.e.enum_43_D;

int main(){
	int[E.max] array;

	if(E.max == 3 && array.length == 3){
		return 0;
	}
}

enum E{
	A = 1,
	B,
	C
}
