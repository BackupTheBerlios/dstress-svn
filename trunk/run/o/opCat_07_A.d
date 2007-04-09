// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-05-26
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4153
// @desc@	Internal error: e2ir.c 488 (char 00914B24) (0x811ad08)

module dstress.run.o.opCat_07_A;

void foo(char[] s){
	if(s != "is this it? yep!"){
		assert(0);
	}
}

int main(){
	char c = '?';
	foo("is this it"~c~" yep!");

	return 0;
}
