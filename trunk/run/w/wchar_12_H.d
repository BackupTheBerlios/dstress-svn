// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-02-11
// @uri@	news:d9fvb3-i69.ln1@birke.kuehne.cn

module dstress.run.w.wchar_12_H;

int main(){
	static assert("\U00010000bcde"w.sizeof == 12);
	
	return 0;
}
