// $HeadURL$
// $Date$
// $Author$

// @author@	Anders F Björklund <afb@algonet.se>
// @date@	2005-01-25
// @uri@	news:ct428n$2qoe$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/D.gnu/983

module dstress.run.unicode_04;

struct Maß{
	int hölle;
}

int main(){
	Maß maß;
	assert(maß.hölle==0);
	maß.hölle++;
	assert(maß.hölle==1);
	return 0;
}
