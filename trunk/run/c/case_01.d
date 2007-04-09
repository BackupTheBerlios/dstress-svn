// $HeadURL$
// $Date$
// $Author$

// @author@	Paul Guerra <Paul_member@pathlink.com>
// @date@	2005-07-29
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4634

// this clearly seems illegal but I can't find any rule combination disallowing it

module dstress.run.c.case_01;

int main(){
	int u=2;

	switch(u){
		case 1:
			void j(){
				case 2:
				u++;
			}
		break;
	}

	return 0;
}
