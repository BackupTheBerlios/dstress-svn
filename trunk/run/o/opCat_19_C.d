// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-25
// @uri@	news:dr7n52$1fm3$1@digitaldaemon.com

module dstress.run.o.opCat_19_C;

int main(){
	const char [] armadillo = "abc" ~ 'a';
	
	static if(armadillo == "abca"){
		return 0;
	}
}
