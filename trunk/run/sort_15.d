// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-02-19
// @uri@	news:cv7gn5$2irj$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/3022

module dstress.run.sort_15;

int main(){
	idouble[] array;
	array.length=10;
	array[0]=idouble.max;
	array[1]=0.875i;
	array[2]=0.75i;
	array[3]=0.625i;
	array[4]=0.5i;
	array[5]=0.375i;
	array[6]=0.25i;
	array[7]=0.125i;
	array[8]=0.0i;
	array[9]=idouble.min;

	idouble[] sorted_copy = array.sort;

	assert(array.length==10);
	assert(array[0]==0.0i);
	assert(array[1]==idouble.min);
	assert(array[2]==0.125i);
	assert(array[3]==0.25i);
	assert(array[4]==0.375i);
	assert(array[5]==0.5i);
	assert(array[6]==0.625i);
	assert(array[7]==0.75i);
	assert(array[8]==0.875i);
	assert(array[9]==idouble.max);

	assert(sorted_copy.length==10);
	assert(sorted_copy[0]==0.0i);
	assert(sorted_copy[1]==idouble.min);
	assert(sorted_copy[2]==0.125i);
	assert(sorted_copy[3]==0.25i);
	assert(sorted_copy[4]==0.375i);
	assert(sorted_copy[5]==0.5i);
	assert(sorted_copy[6]==0.625i);
	assert(sorted_copy[7]==0.75i);
	assert(sorted_copy[8]==0.875i);
	assert(sorted_copy[9]==idouble.max);

	return 0;
}
