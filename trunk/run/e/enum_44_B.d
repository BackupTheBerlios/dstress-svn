// $HeadURL$
// $Date$
// $Author$

// @author@	Ant <duitoolkit@yahoo.ca>
// @date@	2006-02-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6260

module dstess.run.e.enum_44_B;

enum E{
	hello = 3
}

alias E.hello hello;

int main(){
	static assert(hello == 3);
	static assert(E.hello == 3);

	E e;

	if(e == 3){
		return 0;
	}
}
