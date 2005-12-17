// $HeadURL$
// $Date$
// $Author$

module dstress.run.f.foreach_31_C;

int main(){
	int[] index;
	char[] value;

	foreach(int i, char c; "_\U00012345-"w){
		index ~= i;
		value ~= c;
	}

	assert(value.length == 6);
	assert(value[0] == '_');
	assert(value[1] == 0xF0);
	assert(value[2] == 0x92);
	assert(value[3] == 0x8D);
	assert(value[4] == 0x85);
	assert(value[5] == '-');

	assert(index.length == 6);
	assert(index[0] == 0);
	assert(index[1] == 1);
	assert(index[2] == 1);
	assert(index[3] == 1);
	assert(index[4] == 1);
	assert(index[5] == 3);

	return 0;
}
