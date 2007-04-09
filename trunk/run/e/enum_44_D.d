// $HeadURL$
// $Date$
// $Author$

// @author@	Ant <duitoolkit@yahoo.ca>
// @date@	2006-02-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6260

module dstess.run.e.enum_44_D;

int main(){
	alias .hello hello;

	static assert(hello == 3);
	static assert(.hello == 3);

	return 0;
}

enum{
	hello = 3
}

