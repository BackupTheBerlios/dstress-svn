// $HeadURL$
// $Date$
// $Author$

module dstress.run.foreach_16;

int main(){
	char[] string = x"F0 9D 83 93"; // utf-8 for U+1D0D3

	int count=0;
	wchar tmp;
	foreach(wchar value ; string){
		tmp=value;
		count++;
	}
	assert(count==1);
	assert(tmp==0x01D0D3);

	return 0;
}
