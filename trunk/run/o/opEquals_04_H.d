// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-23
// @uri@	news:dr2ia9$24de$1@digitaldaemon.com

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.o.opEquals_04_H;

int main(){
	try{
		assert("abc" != "abc");
	}catch{
		return 0;
	}
}
