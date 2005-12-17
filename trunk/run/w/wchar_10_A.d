// $HeadURL$
// $Date$
// $Author$

module dstress.run.w.wchar_10_A;

int main(){
	wchar[] s = "-\U00012345_";

	assert(s.length == 4);

	assert(s[0] == 0x002D);

	if(s[1] == 0xD808){
		assert(s[2] == 0xDF45);
	}else if(s[1] == 0x08D8){
		assert(s[2] == 0x45DF);
	}else{
		assert(0);
	}

	assert(s[3] == 0x005F);

	return 0;
}
