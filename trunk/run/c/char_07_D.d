// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

module dstress.run.c.char_07_D;

int main(){
	string x = "\uDBC4\uDD11"w;

	if(x.length != 4){
		assert(0);
	}

	if(x[0] == 0xF0 && x[1] == 0x81 && x[2] == 0x84 && x[3] == 0x91){
		return 0;
	}
}
