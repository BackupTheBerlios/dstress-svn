// $HeadURL: http://dstress.kuehne.cn/run/const_22_B.d $
// $Date: 2005-05-06 11:25:58 +0200 (Fr, 06 Mai 2005) $
// $Author: thomask $

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-05-05
// @uri@	news:d5cj56$mfp$1@digitaldaemon.com

module dstress.run.const_22_B;

int main(){
	real d = -3.0L;
	int i = cast(int)d;
	assert(-3 == i);
	return 0;
}

