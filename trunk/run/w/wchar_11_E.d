// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

module dstress.run.c.wchar_11_E;

int main(){
	const wchar[] x = "\uDBC4\uDD11";

	static assert(x.length == 2);

	static if(x[0] == 0xDBC4 && x[1] == 0xDD11){
		return 0;
	}
}
