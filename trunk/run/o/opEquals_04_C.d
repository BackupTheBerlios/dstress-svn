// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-23
// @uri@	news:dr2ia9$24de$1@digitaldaemon.com

module dstress.run.o.opEquals_04_C;

int main(){
	static if("abc" == "abc"){
		return 0;
	}
}
