// encoding :utf-8-bom
int main(){
	assert('y'== 0x79);
	assert(''== 0x80);
	assert('ޙ'== 0x799);
	assert('ࠀ'== 0x800);
	assert('￺'== 0xFFFA);
	assert('𐀀'== 0x10000);
	assert('𐿽'== 0x10FFD);
	return 0;
}
