// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-03-06
// @uri@	news:bug-20-4@http.d.puremagic.com/bugzilla/

// __DSTRESS_ELINE__

module dstress.nocompile.v.volatile_03_C;

int state = 3;

void main(){
	int i;
	volatile int i = state;
}
	
