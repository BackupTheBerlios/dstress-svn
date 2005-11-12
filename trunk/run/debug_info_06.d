// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-03-25
// @uri@	news:d21vhg$pld$1@digitaldaemon.com


module dstress.run.debug_info_06;

struct MyStruct{
}

int check(fn f){
	return 1;
}
	
alias int function(int m) fn;

int main(){
	MyStruct m;
	fn f;
	assert(check(f)==1);
	return 0;
}