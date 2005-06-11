// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-06-10
// @uri@	news:oouon2-li3.ln1@lnews.kuehne.cn
// @desc@	mixing "static if" and "if"

module dstress.run.s.static_of_05_B;

int main(){
	const int i=3;
	if(i==1){
		return 2;
	}else static if(i==2){
		return 1;
	}else if(i==3){
		return 0;
	}
}
