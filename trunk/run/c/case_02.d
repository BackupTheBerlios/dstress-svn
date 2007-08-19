// $HeadURL$
// $Date$
// $Author$

// @author@	Rev <Rev_member@pathlink.com>
// @date@	2005-02-13
// @uri@	news:cunl9i$15r2$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2966

module dstress.run.c.case_02;

string getString(){
	return "i";
}

int main(string[] args){
	switch(args[0]) {
		case getString():
			assert(0);
		defaut:
			return 0;
	}
}
