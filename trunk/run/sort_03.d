// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2004-10-11
// @uri@	news:ckdc4r$re2$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2068

module dstress.run.sort_03;

int main(){
	real[] array;
	array.length=10;
	array[0]=real.max;
	array[1]=0.875;
	array[2]=0.75;
	array[3]=0.625;
	array[4]=0.5;
	array[5]=0.375;
	array[6]=0.25;
	array[7]=0.125;
	array[8]=0.0;
	array[9]=real.min;

	real[] sorted_copy = array.sort;

	assert(sorted_copy.length==10);
	assert(sorted_copy[0]==0.0);
	assert(sorted_copy[1]==real.min);
	assert(sorted_copy[2]==0.125);
	assert(sorted_copy[3]==0.25);
	assert(sorted_copy[4]==0.375);
	assert(sorted_copy[5]==0.5);
	assert(sorted_copy[6]==0.625);
	assert(sorted_copy[7]==0.75);
	assert(sorted_copy[8]==0.875);
	assert(sorted_copy[9]==real.max);

	assert(array.length==10);
	assert(array[0]==0.0);
	assert(array[1]==real.min);
	assert(array[2]==0.125);
	assert(array[3]==0.25);
	assert(array[4]==0.375);
	assert(array[5]==0.5);
	assert(array[6]==0.625);
	assert(array[7]==0.75);
	assert(array[8]==0.875);
	assert(array[9]==real.max);
	
	assert(&array != &sorted_copy);
	
	return 0;
}
