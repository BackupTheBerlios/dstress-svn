// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-11-17
// @uri@	news:olfr62-kjv.ln1@kuehne.cn
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2287

// __DSTRESS_ELINE__ 15

module dstress.nocompile.wchar_06;

int main(){
	wchar c = -1; // wchar.min-1
	return 0;
}
