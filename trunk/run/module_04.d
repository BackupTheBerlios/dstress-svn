// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas@kuehne.thisisspam.cn>
// @date@	2005-01-26

// __DSTRESS_DFLAGS__ -I.

/*module dstress.run.module_04;*/

int i;

int main(){
	assert(run.module_04.i==0);
	run.module_04.i++;
	assert(run.module_04.i==1);
	return 0;
}

