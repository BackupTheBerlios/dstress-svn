// $HeadURL$
// $Date$
// $Author$

// @author@	Tim Keating <Tim_member@pathlink.com>
// @date@	2006-01-27
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6099

module dstress.run.e.enum_43_I;

enum E{
	A = 1,
	B,
	C
}

const int[E.max] array;

int main(){
	static if(E.max == 3){
		static if(array.length == 3){
			return 0;
		}
	}
}

