// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2004-10-11
// @uri@	news:ckdc4r$re2$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2068

module dstress.run.sort_05;

int main(){
	double[10] array;
	array[0]=double.max;
	array[1]=0.875;
	array[2]=0.75;
	array[3]=0.625;
	array[4]=0.5;
	array[5]=0.375;
	array[6]=0.25;
	array[7]=0.125;
	array[8]=0.0;
	array[9]=double.min;

	double[] sorted_copy = array.dup;
	sorted_copy.sort;

	assert(sorted_copy.length==10);
	double test = 0;
	assert(sorted_copy[0]==test);
	test = double.min;
	assert(sorted_copy[1]==test);
	test = 0.125;
	assert(sorted_copy[2]==test);
	test = 0.25;
	assert(sorted_copy[3]==test);
	test = 0.375;
	assert(sorted_copy[4]==test);
	test = 0.5;
	assert(sorted_copy[5]==test);
	test = 0.625;
	assert(sorted_copy[6]==test);
	test = 0.75;
	assert(sorted_copy[7]==test);
	test = 0.875;
	assert(sorted_copy[8]==test);
	test = double.max;
	assert(sorted_copy[9]==test);

	return 0;
}
