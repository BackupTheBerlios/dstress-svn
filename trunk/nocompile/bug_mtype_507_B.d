// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-01-19

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
