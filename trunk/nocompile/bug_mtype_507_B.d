// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-01-22
// @uri@	news:csvvet$2g4$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2741

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
