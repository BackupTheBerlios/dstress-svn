// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

module dstress.run.c.wchar_11_B;

int main(){
	wchar[] string = "\uDBC4\uDD11"c;

	assert(string.length == 2);

	if(string[0] == 0xDBC4 && string[1] == 0xDD11){
		return 0;
	}
}
