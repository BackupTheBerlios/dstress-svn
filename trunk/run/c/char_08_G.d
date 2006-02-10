// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-02-11
// @uri@	news:d9fvb3-i69.ln1@birke.kuehne.cn

module dstress.run.c.char_08_G;

int main(){
	if("\u0081bcde"c.sizeof == 6){
		return 0;
	}
}
