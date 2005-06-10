// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-06-10
// @uri@	news:oouon2-li3.ln1@lnews.kuehne.cn
// @desc@	mixing "static if" and "if"

module dstress.undefined.static_of_05_A;

int main(){
	const int i=1;
	static if(i==1){
		return 0;
	}else if(i==2){
		return 1;
	}
}
