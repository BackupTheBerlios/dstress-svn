// $HeadURL: http://dstress.kuehne.cn/run/switch_22.d $
// $Date: 2005-05-03 21:07:03 +0200 (Di, 03 Mai 2005) $
// $Author: thomask $

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-05-01
// @uri@	news:d5247u$28ch$2@digitaldaemon.com

module dstress.run.switch_22;

int main(char[][] args){
	if(args.length<int.max){
		args[0]="test";
	}

	alias const char[] cChar;
	cChar c = "test";

	switch(args[0]){
		case c:
			break;
		default:
			assert(0);
	}	
	return 0;
}
