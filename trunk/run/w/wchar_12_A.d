// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-02-11
// @uri@	news:d9fvb3-i69.ln1@birke.kuehne.cn

module dstress.run.w.wchar_12_A;

int main(){
	const wchar[] x = "abcde";

	static assert(x.sizeof == size_t.sizeof * 2);

	return 0;
}
