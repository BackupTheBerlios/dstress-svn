// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.lindeREM@OVEgmail.com>
// @date@	2006-02-28
// @uri@	news:du1l30$1jfl$1@digitaldaemon.com

module dstress.run.o.opPostInc_12_B;

int main(){
	bool a = true;

	a++;

	if(a == false || a == true){
		return 0;
	}
}