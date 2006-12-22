// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-06
// @uri@	news:dn45s8$vd9$1@digitaldaemon.com

module dstress.run.b.bug_expression_525_D;

template t(){
	const char [] t = "hello";
}

const char [] s = t!();

int main(){
	if(s == "hello"){
		return 0;
	}
}
