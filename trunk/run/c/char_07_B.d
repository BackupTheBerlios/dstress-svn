// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

module dstress.run.c.char_07_B;

int main(){
	char[] string = "\uDBC4\uDD11"c;

	if(string.length != 4){
		assert(0);
	}

	if(string[0] == 0xF0 && string[1] == 0x81 && string[2] == 0x84 && string[3] == 0x91){
		return 0;
	}
}
