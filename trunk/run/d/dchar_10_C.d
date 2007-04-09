// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

module dstress.run.d.dchar_10_C;

int main(){
	dchar[] string = "\uDBC4\uDD11"d;

	assert(string.length == 1);

	if(string[0] == 0x101111){
		return 0;
	}
}
