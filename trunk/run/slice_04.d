// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-09-15

module dstress.run.slice_04;

int main(){
	char[] array = new char[4];
	char letter = 'a';
	array[]=letter;
	assert(array[0]=='a');
	assert(array[1]=='a');
	assert(array[2]=='a');
	assert(array[3]=='a');

	return 0;
}
