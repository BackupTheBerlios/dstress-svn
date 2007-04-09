// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-04-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3614

// __DSTRESS_ELINE__ 15

module dstress.nocompile.length_07;

void test(){
	char[2] kuka;
	kuka.length=2;
}

