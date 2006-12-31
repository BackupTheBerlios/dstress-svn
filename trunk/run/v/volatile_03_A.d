// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-03-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=20

module dstress.run.v.volatile_03_A;

int state = 3;

int main(){
	int i;
	volatile i = state;

	if(i != 3){
		assert(0);
	}

	return 0;
}
	
