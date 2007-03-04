// $HeadURL$
// $Date$
// $Author$

// @author@	Anders F Björklund <afb@algonet.se>
// @date@	2005-01-25
// @uri@	news:ct428n$2qoe$1@digitaldaemon.com
// @uri@	nntp://news.digitalmars.com/D.gnu/983

module dstress.run.unicode_03;

int äöü;

int main(){
	assert(äöü==0);
	äöü++;
	assert(äöü==1);
	return 0;
}
