// $HeadURL: svn://dstress.kuehne.cn/run/__DATE__01.d $
// $Date: 2005-03-12 14:49:58 +0100 (Sat, 12 Mar 2005) $
// $Author: thomask $

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-06
// @uri@	news:dn45s8$vd9$1@digitaldaemon.com

module dstress.run.b.bug_expression_525_D;

template t(){
	const char [] t = "hello";
}

const char [] s = t!();

int main(){
	if(s == "a"){
		return 0;
	}
}