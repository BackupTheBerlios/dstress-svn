// based on a report by:
// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2004-10-11
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2068
// @uri@	<ckdc4r$re2$1@digitaldaemon.com>

int main(){
	real[8] array;
	array[0]=0.875;
	array[1]=0.75;
	array[2]=0.625;
	array[3]=0.5;
	array[4]=0.375;
	array[5]=0.25;
	array[6]=0.125;
	array[7]=0.0;

	real[] sorted_copy = array.dup;
	sorted_copy.sort;

	assert(sorted_copy[0]==0.0);
	assert(sorted_copy[1]==0.125);
	assert(sorted_copy[2]==0.25);
	assert(sorted_copy[3]==0.375);
	assert(sorted_copy[4]==0.5);
	assert(sorted_copy[5]==0.625);
	assert(sorted_copy[6]==0.75);
	assert(sorted_copy[7]==0.875);

	return 0;
}
