// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-01-22
// @uri@	news:csvvet$2g4$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2741

// __DSTRESS_ELINE__ 21

module dstress.nocompile.bug_mtype_507_B;

struct Struct{
	int x;
}

int main(){
	int i;
	Struct s;
	if(s==i){
		return -1;
	}
	return 0;
}
