// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-12-17
// @uri@	news:o7fc73-4ci.ln1@birke.kuehne.cn

module dstress.run.f.foreach_31_F;

int main(){
	wchar[] s = "_\U00012345-"w;

	int[] index;
	char[] value;

	foreach(int i, char c; s){
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
