// @author@	Steward Gordon <smjg_1998@yahoo.com>
// @date@	2004-09-15
// @uri@	news:ci94i9$1352$2@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/1849

module dstress.run.slice_03;

int main(){
	char[] array;
	array.length=4;
	char letter = 'a';
	array[0..4]=letter;
	assert(array[0]=='a');
	assert(array[1]=='a');
	assert(array[2]=='a');
	assert(array[3]=='a');

	return 0;
}
