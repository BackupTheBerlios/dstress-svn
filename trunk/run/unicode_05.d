// $HeadURL$
// $Date$
// $Author$

// @author@	Anders F Björklund <afb@algonet.se>
// @date@	2005-01-25
// @uri@	news:ct428n$2qoe$1@digitaldaemon.com
// @uri@	nntp://news.digitalmars.com/D.gnu/983

module dstress.run.unicode_05;

class 国{
	int 人;
}

int main(){
	国 日本 = new 国();
	assert(日本.人==0);
	日本.人++;
	assert(日本.人==1);
	return 0;
}
