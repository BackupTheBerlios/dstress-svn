// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>

module dstress.nocompile.bug_mtype_507_A;

int main(){
	Object o;
	int i;
	if(i==o){
		return -1;
	}
	return 0;
}
