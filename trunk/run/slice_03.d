// @author@	Steward Gordon <smjg_1998@yahoo.com>
// @date@	2004-09-15

int main(){
	char[] array = new char[4];
	char letter = 'a';
	array[0..4]=letter;
	assert(array[0]=='a');
	assert(array[1]=='a');
	assert(array[2]=='a');
	assert(array[3]=='a');

	return 0;
}
