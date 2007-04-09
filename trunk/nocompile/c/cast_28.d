// $HeadURL$
// $Date$
// $Author$

// @author@	kenny <funisher@gmail.com>
// @date@	2005-07-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4547

module dstress.nocompile.c.cast_28;

void main(){
	char[] data;
	bool* pData;

	pData = &cast(bool*) data;
} 
