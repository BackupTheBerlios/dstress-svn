// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-06
// @uri@	news:dn45s8$vd9$1@digitaldaemon.com

module dstress.run.b.bug_expression_525_E;

template t(char[] arg){
	const char [] s = "hello";
}

const char [] s = t!("a"[0 .. 1]).s;

int main(){
	if(s == "hello"){
		return 0;
	}
}
