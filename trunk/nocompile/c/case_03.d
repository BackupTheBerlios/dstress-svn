// $HeadURL$
// $Date$
// $Author$

// @author@	Rev <Rev_member@pathlink.com>
// @date@	2005-02-13
// @uri@	news:cunl9i$15r2$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2966

// __DSTRESS_ELINE__ 22

module dstress.nocompile.c.case_03;

char[] getString(){
	return "i";
}

void test(){
	char[] hold;
	switch(hold) {
		case "":
		case getString():
	}
}
