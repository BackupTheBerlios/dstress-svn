// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas@kuehne.thisisspam.cn>
// @date@	2005-01-25

module dstress.run.module_01;

int i;

int main(){
	assert(dstress.run.module_01.i==0);
	stress.run.module_01.i++;
	assert(dstress.run.module_01.i==1);
	return 0;
}

