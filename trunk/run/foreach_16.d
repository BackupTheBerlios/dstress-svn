// $HeadURL$
// $Date$
// $Author$

module dstress.run.foreach_16;

int main(){
	string x = x"F0 9D 83 93"; // utf-8 for U+1D0D3

	int count=0;
	dchar tmp;
	foreach(dchar value ; x){
		tmp=value;
		count++;
	}
	assert(count==1);
	assert(tmp==0x01D0D3);

	return 0;
}
