// $HeadURL: http://dstress.kuehne.cn/run/const_20_A.d $
// $Date: 2005-05-06 11:25:58 +0200 (Fr, 06 Mai 2005) $
// $Author: thomask $

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-05-05
// @uri@	news:d5cj56$mfp$1@digitaldaemon.com

module dstress.run.const_20_A;

int main(){
	const float d = -3.0f;
	int i = cast(int)d;
	assert(-3 == i);
	return 0;
}

