// $HeadURL: svn://dstress.kuehne.cn/run/__DATE__01.d $
// $Date: 2005-03-12 14:49:58 +0100 (Sat, 12 Mar 2005) $
// $Author: thomask $

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-06
// @uri@	news:dn45s8$vd9$1@digitaldaemon.com

module dstress.run.b.bug_expression_525_C;

template t(char[] arg){
	const char [] t = arg;
}

const char [] s = t!("a"[0 .. 1]);

int main(){
	if(s == "a"){
		return 0;
	}
}
