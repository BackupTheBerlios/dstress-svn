// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-11-17
// @uri@	news:olfr62-kjv.ln1@kuehne.cn
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2287

module dstress.nocompile.wchar_04;

int main(){
	wchar c = 0x10000; // wchar.max+1
	return 0;
}
