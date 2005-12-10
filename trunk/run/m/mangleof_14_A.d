// $HeadURL: svn://dstress.kuehne.cn/run/__DATE__01.d $
// $Date: 2005-03-12 14:49:58 +0100 (Sat, 12 Mar 2005) $
// $Author: thomask $

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-06
// @uri@	news:dn488i$11kk$1@digitaldaemon.com

module dstress.run.m.mangleof_14_A;

template a(size_t n){
	const size_t a = n;
}

template b(f) {
	const int b =  a!(f.mangleof.length);
}

int main(){
	int c = b!(int[2]);

	if(c == 3){
		return 0;
	}
}
