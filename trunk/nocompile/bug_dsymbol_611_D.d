// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-01-19

module dstress.nocompile.bug_dsymbol_611_D;

struct Struct{
	int x;
}

int main(){
	Object o;
	Struct s;
	if(s==o){
		return -1;
	}
	return 0;
}
