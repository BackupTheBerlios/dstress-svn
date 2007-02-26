// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2007-02-15
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=964
// @desc@	[Issue 964] Internal error: ../ztc/cod3.c 1760

module dstress.run.b.bug_cod3_1760_A;

void func(){
}

int main(){
	if(*cast(int*)&func){
		return 0;
	}
	assert(0);
}

